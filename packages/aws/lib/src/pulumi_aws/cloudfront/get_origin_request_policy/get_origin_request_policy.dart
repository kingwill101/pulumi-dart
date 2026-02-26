import 'package:pulumi/pulumi.dart';
import 'get_origin_request_policy_args.dart';
import 'get_origin_request_policy_result.dart';

/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.cloudfront.getOriginRequestPolicy({
/// name: "example-policy",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.get_origin_request_policy(name="example-policy")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.CloudFront.GetOriginRequestPolicy.Invoke(new()
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
/// _, err := cloudfront.LookupOriginRequestPolicy(ctx, &cloudfront.LookupOriginRequestPolicyArgs{
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
/// import com.pulumi.aws.cloudfront.inputs.GetOriginRequestPolicyArgs;
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
/// final var example = CloudfrontFunctions.getOriginRequestPolicy(GetOriginRequestPolicyArgs.builder()
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
/// function: aws:cloudfront:getOriginRequestPolicy
/// arguments:
/// name: example-policy
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### AWS-Managed Policies
///
/// AWS managed origin request policy names are prefixed with `Managed-`:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const uaReferer = aws.cloudfront.getOriginRequestPolicy({
/// name: "Managed-UserAgentRefererHeaders",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ua_referer = aws.cloudfront.get_origin_request_policy(name="Managed-UserAgentRefererHeaders")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var uaReferer = Aws.CloudFront.GetOriginRequestPolicy.Invoke(new()
/// {
/// Name = "Managed-UserAgentRefererHeaders",
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
/// _, err := cloudfront.LookupOriginRequestPolicy(ctx, &cloudfront.LookupOriginRequestPolicyArgs{
/// Name: pulumi.StringRef("Managed-UserAgentRefererHeaders"),
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
/// import com.pulumi.aws.cloudfront.inputs.GetOriginRequestPolicyArgs;
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
/// final var uaReferer = CloudfrontFunctions.getOriginRequestPolicy(GetOriginRequestPolicyArgs.builder()
/// .name("Managed-UserAgentRefererHeaders")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// uaReferer:
/// fn::invoke:
/// function: aws:cloudfront:getOriginRequestPolicy
/// arguments:
/// name: Managed-UserAgentRefererHeaders
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetOriginRequestPolicyResult> getOriginRequestPolicy(
  GetOriginRequestPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getOriginRequestPolicy:getOriginRequestPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOriginRequestPolicyResult.fromMap(result);
}
