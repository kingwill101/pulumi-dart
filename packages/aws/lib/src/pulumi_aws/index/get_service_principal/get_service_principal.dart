import 'package:pulumi/pulumi.dart';
import 'get_service_principal_args.dart';
import 'get_service_principal_result.dart';

/// Use this data source to create a Service Principal Name for a service in a given region. Service Principal Names should always end in the standard global format: `{servicename}.amazonaws.com`. However, in some AWS partitions, AWS may expect a different format.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getServicePrincipal({
/// serviceName: "s3",
/// });
/// const test = aws.getServicePrincipal({
/// serviceName: "s3",
/// region: "us-iso-east-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_service_principal(service_name="s3")
/// test = aws.get_service_principal(service_name="s3",
/// region="us-iso-east-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var current = Aws.GetServicePrincipal.Invoke(new()
/// {
/// ServiceName = "s3",
/// });
///
/// var test = Aws.GetServicePrincipal.Invoke(new()
/// {
/// ServiceName = "s3",
/// Region = "us-iso-east-1",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := aws.GetServicePrincipal(ctx, &aws.GetServicePrincipalArgs{
/// ServiceName: "s3",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = aws.GetServicePrincipal(ctx, &aws.GetServicePrincipalArgs{
/// ServiceName: "s3",
/// Region:      pulumi.StringRef("us-iso-east-1"),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetServicePrincipalArgs;
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
/// final var current = AwsFunctions.getServicePrincipal(GetServicePrincipalArgs.builder()
/// .serviceName("s3")
/// .build());
///
/// final var test = AwsFunctions.getServicePrincipal(GetServicePrincipalArgs.builder()
/// .serviceName("s3")
/// .region("us-iso-east-1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getServicePrincipal
/// arguments:
/// serviceName: s3
/// test:
/// fn::invoke:
/// function: aws:getServicePrincipal
/// arguments:
/// serviceName: s3
/// region: us-iso-east-1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetServicePrincipalResult> getServicePrincipal(
  GetServicePrincipalArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getServicePrincipal:getServicePrincipal',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServicePrincipalResult.fromMap(result);
}
