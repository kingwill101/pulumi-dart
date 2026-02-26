import 'package:pulumi/pulumi.dart';
import 'get_origin_access_identity_args.dart';
import 'get_origin_access_identity_result.dart';

/// Use this data source to retrieve information for an Amazon CloudFront origin access identity.
///
/// ## Example Usage
///
/// The following example below creates a CloudFront origin access identity.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.cloudfront.getOriginAccessIdentity({
/// id: "E1ZAKK699EOLAL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.get_origin_access_identity(id="E1ZAKK699EOLAL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.CloudFront.GetOriginAccessIdentity.Invoke(new()
/// {
/// Id = "E1ZAKK699EOLAL",
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
/// _, err := cloudfront.LookupOriginAccessIdentity(ctx, &cloudfront.LookupOriginAccessIdentityArgs{
/// Id: "E1ZAKK699EOLAL",
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
/// import com.pulumi.aws.cloudfront.inputs.GetOriginAccessIdentityArgs;
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
/// final var example = CloudfrontFunctions.getOriginAccessIdentity(GetOriginAccessIdentityArgs.builder()
/// .id("E1ZAKK699EOLAL")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:cloudfront:getOriginAccessIdentity
/// arguments:
/// id: E1ZAKK699EOLAL
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetOriginAccessIdentityResult> getOriginAccessIdentity(
  GetOriginAccessIdentityArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getOriginAccessIdentity:getOriginAccessIdentity',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOriginAccessIdentityResult.fromMap(result);
}
