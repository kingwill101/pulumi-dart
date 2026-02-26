import 'package:pulumi/pulumi.dart';
import 'get_cache_policy_args.dart';
import 'get_cache_policy_result.dart';

/// Use this data source to retrieve information about a CloudFront cache policy.
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
/// const example = aws.cloudfront.getCachePolicy({
/// name: "example-policy",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.get_cache_policy(name="example-policy")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.CloudFront.GetCachePolicy.Invoke(new()
/// {
/// Name = "example-policy",
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
/// _, err := cloudfront.LookupCachePolicy(ctx, &cloudfront.LookupCachePolicyArgs{
/// Name: pulumi.StringRef("example-policy"),
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
/// import com.pulumi.aws.cloudfront.inputs.GetCachePolicyArgs;
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
/// final var example = CloudfrontFunctions.getCachePolicy(GetCachePolicyArgs.builder()
/// .name("example-policy")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:cloudfront:getCachePolicy
/// arguments:
/// name: example-policy
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### AWS-Managed Policies
///
/// AWS managed cache policy names are prefixed with `Managed-`, except for `UseOriginCacheControlHeaders` and `UseOriginCacheControlHeaders-QueryStrings`:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example1 = aws.cloudfront.getCachePolicy({
/// name: "Managed-CachingOptimized",
/// });
/// const example2 = aws.cloudfront.getCachePolicy({
/// name: "UseOriginCacheControlHeaders",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example1 = aws.cloudfront.get_cache_policy(name="Managed-CachingOptimized")
/// example2 = aws.cloudfront.get_cache_policy(name="UseOriginCacheControlHeaders")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example1 = Aws.CloudFront.GetCachePolicy.Invoke(new()
/// {
/// Name = "Managed-CachingOptimized",
/// });
///
/// var example2 = Aws.CloudFront.GetCachePolicy.Invoke(new()
/// {
/// Name = "UseOriginCacheControlHeaders",
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
/// _, err := cloudfront.LookupCachePolicy(ctx, &cloudfront.LookupCachePolicyArgs{
/// Name: pulumi.StringRef("Managed-CachingOptimized"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = cloudfront.LookupCachePolicy(ctx, &cloudfront.LookupCachePolicyArgs{
/// Name: pulumi.StringRef("UseOriginCacheControlHeaders"),
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
/// import com.pulumi.aws.cloudfront.inputs.GetCachePolicyArgs;
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
/// final var example1 = CloudfrontFunctions.getCachePolicy(GetCachePolicyArgs.builder()
/// .name("Managed-CachingOptimized")
/// .build());
///
/// final var example2 = CloudfrontFunctions.getCachePolicy(GetCachePolicyArgs.builder()
/// .name("UseOriginCacheControlHeaders")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example1:
/// fn::invoke:
/// function: aws:cloudfront:getCachePolicy
/// arguments:
/// name: Managed-CachingOptimized
/// example2:
/// fn::invoke:
/// function: aws:cloudfront:getCachePolicy
/// arguments:
/// name: UseOriginCacheControlHeaders
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetCachePolicyResult> getCachePolicy(
  GetCachePolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getCachePolicy:getCachePolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCachePolicyResult.fromMap(result);
}
