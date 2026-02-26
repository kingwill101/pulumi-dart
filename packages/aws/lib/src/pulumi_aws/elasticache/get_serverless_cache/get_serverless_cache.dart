import 'package:pulumi/pulumi.dart';
import 'get_serverless_cache_args.dart';
import 'get_serverless_cache_result.dart';

/// Use this data source to get information about an ElastiCache Serverless Cache.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.elasticache.getServerlessCache({
/// name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.elasticache.get_serverless_cache(name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.ElastiCache.GetServerlessCache.Invoke(new()
/// {
/// Name = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticache"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := elasticache.LookupServerlessCache(ctx, &elasticache.LookupServerlessCacheArgs{
/// Name: "example",
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
/// import com.pulumi.aws.elasticache.ElasticacheFunctions;
/// import com.pulumi.aws.elasticache.inputs.GetServerlessCacheArgs;
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
/// final var example = ElasticacheFunctions.getServerlessCache(GetServerlessCacheArgs.builder()
/// .name("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:elasticache:getServerlessCache
/// arguments:
/// name: example
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetServerlessCacheResult> getServerlessCache(
  GetServerlessCacheArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticache/getServerlessCache:getServerlessCache',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServerlessCacheResult.fromMap(result);
}
