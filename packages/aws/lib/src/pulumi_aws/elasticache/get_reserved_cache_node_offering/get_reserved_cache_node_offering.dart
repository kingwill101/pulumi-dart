import 'package:pulumi/pulumi.dart';
import 'get_reserved_cache_node_offering_args.dart';
import 'get_reserved_cache_node_offering_result.dart';

/// Information about a single ElastiCache Reserved Cache Node Offering.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.elasticache.getReservedCacheNodeOffering({
/// cacheNodeType: "cache.t4g.small",
/// duration: "P1Y",
/// offeringType: "No Upfront",
/// productDescription: "redis",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.elasticache.get_reserved_cache_node_offering(cache_node_type="cache.t4g.small",
/// duration="P1Y",
/// offering_type="No Upfront",
/// product_description="redis")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.ElastiCache.GetReservedCacheNodeOffering.Invoke(new()
/// {
/// CacheNodeType = "cache.t4g.small",
/// Duration = "P1Y",
/// OfferingType = "No Upfront",
/// ProductDescription = "redis",
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
/// _, err := elasticache.GetReservedCacheNodeOffering(ctx, &elasticache.GetReservedCacheNodeOfferingArgs{
/// CacheNodeType:      "cache.t4g.small",
/// Duration:           "P1Y",
/// OfferingType:       "No Upfront",
/// ProductDescription: "redis",
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
/// import com.pulumi.aws.elasticache.inputs.GetReservedCacheNodeOfferingArgs;
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
/// final var example = ElasticacheFunctions.getReservedCacheNodeOffering(GetReservedCacheNodeOfferingArgs.builder()
/// .cacheNodeType("cache.t4g.small")
/// .duration("P1Y")
/// .offeringType("No Upfront")
/// .productDescription("redis")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:elasticache:getReservedCacheNodeOffering
/// arguments:
/// cacheNodeType: cache.t4g.small
/// duration: P1Y
/// offeringType: No Upfront
/// productDescription: redis
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetReservedCacheNodeOfferingResult> getReservedCacheNodeOffering(
  GetReservedCacheNodeOfferingArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticache/getReservedCacheNodeOffering:getReservedCacheNodeOffering',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReservedCacheNodeOfferingResult.fromMap(result);
}
