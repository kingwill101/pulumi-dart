import 'package:pulumi/pulumi.dart';
import 'get_origin_access_identities_args.dart';
import 'get_origin_access_identities_result.dart';

/// Use this data source to get ARNs, ids and S3 canonical user IDs of Amazon CloudFront origin access identities.
///
/// ## Example Usage
///
/// ### All origin access identities in the account
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.cloudfront.getOriginAccessIdentities({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.get_origin_access_identities()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.CloudFront.GetOriginAccessIdentities.Invoke();
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
/// _, err := cloudfront.GetOriginAccessIdentities(ctx, &cloudfront.GetOriginAccessIdentitiesArgs{}, nil)
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
/// import com.pulumi.aws.cloudfront.inputs.GetOriginAccessIdentitiesArgs;
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
/// final var example = CloudfrontFunctions.getOriginAccessIdentities(GetOriginAccessIdentitiesArgs.builder()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:cloudfront:getOriginAccessIdentities
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Origin access identities filtered by comment/name
///
/// Origin access identities whose comments are `example-comment1`, `example-comment2`
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.cloudfront.getOriginAccessIdentities({
/// comments: [
/// "example-comment1",
/// "example-comment2",
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.get_origin_access_identities(comments=[
/// "example-comment1",
/// "example-comment2",
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.CloudFront.GetOriginAccessIdentities.Invoke(new()
/// {
/// Comments = new[]
/// {
/// "example-comment1",
/// "example-comment2",
/// },
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
/// _, err := cloudfront.GetOriginAccessIdentities(ctx, &cloudfront.GetOriginAccessIdentitiesArgs{
/// Comments: []string{
/// "example-comment1",
/// "example-comment2",
/// },
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
/// import com.pulumi.aws.cloudfront.inputs.GetOriginAccessIdentitiesArgs;
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
/// final var example = CloudfrontFunctions.getOriginAccessIdentities(GetOriginAccessIdentitiesArgs.builder()
/// .comments(
/// "example-comment1",
/// "example-comment2")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:cloudfront:getOriginAccessIdentities
/// arguments:
/// comments:
/// - example-comment1
/// - example-comment2
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetOriginAccessIdentitiesResult> getOriginAccessIdentities(
  GetOriginAccessIdentitiesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getOriginAccessIdentities:getOriginAccessIdentities',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOriginAccessIdentitiesResult.fromMap(result);
}
