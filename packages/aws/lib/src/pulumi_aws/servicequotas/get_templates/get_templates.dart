import 'package:pulumi/pulumi.dart';
import 'get_templates_args.dart';
import 'get_templates_result.dart';

/// Data source for managing AWS Service Quotas Templates.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.servicequotas.getTemplates({
/// awsRegion: "us-east-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicequotas.get_templates(aws_region="us-east-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.ServiceQuotas.GetTemplates.Invoke(new()
/// {
/// AwsRegion = "us-east-1",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicequotas"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := servicequotas.GetTemplates(ctx, &servicequotas.GetTemplatesArgs{
/// AwsRegion: pulumi.StringRef("us-east-1"),
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
/// import com.pulumi.aws.servicequotas.ServicequotasFunctions;
/// import com.pulumi.aws.servicequotas.inputs.GetTemplatesArgs;
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
/// final var example = ServicequotasFunctions.getTemplates(GetTemplatesArgs.builder()
/// .awsRegion("us-east-1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:servicequotas:getTemplates
/// arguments:
/// awsRegion: us-east-1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetTemplatesResult> getTemplates(
  GetTemplatesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicequotas/getTemplates:getTemplates',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTemplatesResult.fromMap(result);
}
