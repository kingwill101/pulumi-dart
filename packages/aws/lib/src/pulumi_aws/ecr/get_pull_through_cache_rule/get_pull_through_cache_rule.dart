import 'package:pulumi/pulumi.dart';
import 'get_pull_through_cache_rule_args.dart';
import 'get_pull_through_cache_rule_result.dart';

/// The ECR Pull Through Cache Rule data source allows the upstream registry URL and registry ID to be retrieved for a Pull Through Cache Rule.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ecrPublic = aws.ecr.getPullThroughCacheRule({
/// ecrRepositoryPrefix: "ecr-public",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ecr_public = aws.ecr.get_pull_through_cache_rule(ecr_repository_prefix="ecr-public")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var ecrPublic = Aws.Ecr.GetPullThroughCacheRule.Invoke(new()
/// {
/// EcrRepositoryPrefix = "ecr-public",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ecr.LookupPullThroughCacheRule(ctx, &ecr.LookupPullThroughCacheRuleArgs{
/// EcrRepositoryPrefix: "ecr-public",
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
/// import com.pulumi.aws.ecr.EcrFunctions;
/// import com.pulumi.aws.ecr.inputs.GetPullThroughCacheRuleArgs;
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
/// final var ecrPublic = EcrFunctions.getPullThroughCacheRule(GetPullThroughCacheRuleArgs.builder()
/// .ecrRepositoryPrefix("ecr-public")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// ecrPublic:
/// fn::invoke:
/// function: aws:ecr:getPullThroughCacheRule
/// arguments:
/// ecrRepositoryPrefix: ecr-public
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetPullThroughCacheRuleResult> getPullThroughCacheRule(
  GetPullThroughCacheRuleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecr/getPullThroughCacheRule:getPullThroughCacheRule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPullThroughCacheRuleResult.fromMap(result);
}
