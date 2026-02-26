import 'package:pulumi/pulumi.dart';
import 'get_resource_args3.dart';
import 'get_resource_result3.dart';

/// Provides details about a Lake Formation resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.lakeformation.getResource({
/// arn: "arn:aws:s3:::tf-acc-test-9151654063908211878",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lakeformation.get_resource(arn="arn:aws:s3:::tf-acc-test-9151654063908211878")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.LakeFormation.GetResource.Invoke(new()
/// {
/// Arn = "arn:aws:s3:::tf-acc-test-9151654063908211878",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lakeformation"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lakeformation.LookupResource(ctx, &lakeformation.LookupResourceArgs{
/// Arn: "arn:aws:s3:::tf-acc-test-9151654063908211878",
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
/// import com.pulumi.aws.lakeformation.LakeformationFunctions;
/// import com.pulumi.aws.lakeformation.inputs.GetResourceArgs;
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
/// final var example = LakeformationFunctions.getResource(GetResourceArgs.builder()
/// .arn("arn:aws:s3:::tf-acc-test-9151654063908211878")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:lakeformation:getResource
/// arguments:
/// arn: arn:aws:s3:::tf-acc-test-9151654063908211878
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetResourceResult3> getResource3(
  GetResourceArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lakeformation/getResource:getResource',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResourceResult3.fromMap(result);
}
