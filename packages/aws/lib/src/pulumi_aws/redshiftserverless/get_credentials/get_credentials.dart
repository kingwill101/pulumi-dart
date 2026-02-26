import 'package:pulumi/pulumi.dart';
import 'get_credentials_args.dart';
import 'get_credentials_result.dart';

/// Provides redshift serverless temporary credentials for a workgroup.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.redshiftserverless.getCredentials({
/// workgroupName: exampleAwsRedshiftserverlessWorkgroup.workgroupName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshiftserverless.get_credentials(workgroup_name=example_aws_redshiftserverless_workgroup["workgroupName"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.RedshiftServerless.GetCredentials.Invoke(new()
/// {
/// WorkgroupName = exampleAwsRedshiftserverlessWorkgroup.WorkgroupName,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshiftserverless"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := redshiftserverless.GetCredentials(ctx, &redshiftserverless.GetCredentialsArgs{
/// WorkgroupName: exampleAwsRedshiftserverlessWorkgroup.WorkgroupName,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.redshiftserverless.RedshiftserverlessFunctions;
/// import com.pulumi.aws.redshiftserverless.inputs.GetCredentialsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var example = RedshiftserverlessFunctions.getCredentials(GetCredentialsArgs.builder()
/// .workgroupName(exampleAwsRedshiftserverlessWorkgroup.workgroupName())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:redshiftserverless:getCredentials
/// arguments:
/// workgroupName: ${exampleAwsRedshiftserverlessWorkgroup.workgroupName}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetCredentialsResult> getCredentials(
  GetCredentialsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:redshiftserverless/getCredentials:getCredentials',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCredentialsResult.fromMap(result);
}
