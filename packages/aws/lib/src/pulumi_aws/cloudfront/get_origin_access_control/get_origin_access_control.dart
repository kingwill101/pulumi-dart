import 'package:pulumi/pulumi.dart';
import 'get_origin_access_control_args.dart';
import 'get_origin_access_control_result.dart';

/// Use this data source to retrieve information for an Amazon CloudFront origin access control config.
///
/// ## Example Usage
///
/// The below example retrieves a CloudFront origin access control config.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.cloudfront.getOriginAccessControl({
/// id: "E2T5VTFBZJ3BJB",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.get_origin_access_control(id="E2T5VTFBZJ3BJB")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.CloudFront.GetOriginAccessControl.Invoke(new()
/// {
/// Id = "E2T5VTFBZJ3BJB",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudfront.LookupOriginAccessControl(ctx, &cloudfront.LookupOriginAccessControlArgs{
/// Id: "E2T5VTFBZJ3BJB",
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
/// import com.pulumi.aws.cloudfront.CloudfrontFunctions;
/// import com.pulumi.aws.cloudfront.inputs.GetOriginAccessControlArgs;
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
/// final var example = CloudfrontFunctions.getOriginAccessControl(GetOriginAccessControlArgs.builder()
/// .id("E2T5VTFBZJ3BJB")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:cloudfront:getOriginAccessControl
/// arguments:
/// id: E2T5VTFBZJ3BJB
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetOriginAccessControlResult> getOriginAccessControl(
  GetOriginAccessControlArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getOriginAccessControl:getOriginAccessControl',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOriginAccessControlResult.fromMap(result);
}
