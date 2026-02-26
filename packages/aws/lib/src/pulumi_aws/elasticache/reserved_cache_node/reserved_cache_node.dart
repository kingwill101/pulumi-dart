import 'package:pulumi/pulumi.dart';
import '../reserved_cache_node_recurring_charge/reserved_cache_node_recurring_charge.dart';
import '../reserved_cache_node_timeouts/reserved_cache_node_timeouts.dart';
import 'reserved_cache_node_args.dart';

/// Manages an ElastiCache Reserved Cache Node.
///
/// > **NOTE:** Once created, a reservation is valid for the <span pulumi-lang-nodejs="`duration`" pulumi-lang-dotnet="`Duration`" pulumi-lang-go="`duration`" pulumi-lang-python="`duration`" pulumi-lang-yaml="`duration`" pulumi-lang-java="`duration`">`duration`</span> of the provided <span pulumi-lang-nodejs="`offeringId`" pulumi-lang-dotnet="`OfferingId`" pulumi-lang-go="`offeringId`" pulumi-lang-python="`offering_id`" pulumi-lang-yaml="`offeringId`" pulumi-lang-java="`offeringId`">`offering_id`</span> and cannot be deleted. Performing a <span pulumi-lang-nodejs="`destroy`" pulumi-lang-dotnet="`Destroy`" pulumi-lang-go="`destroy`" pulumi-lang-python="`destroy`" pulumi-lang-yaml="`destroy`" pulumi-lang-java="`destroy`">`destroy`</span> will only remove the resource from state. For more information see [ElastiCache Reserved Nodes Documentation](https://aws.amazon.com/elasticache/reserved-cache-nodes/) and [PurchaseReservedCacheNodesOffering](https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_PurchaseReservedCacheNodesOffering.html).
///
/// > **NOTE:** Due to the expense of testing this resource, we provide it as best effort. If you find it useful, and have the ability to help test or notice issues, consider reaching out to us on GitHub.
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
/// const exampleReservedCacheNode = new aws.elasticache.ReservedCacheNode("example", {
/// reservedCacheNodesOfferingId: example.then(example => example.offeringId),
/// id: "optionalCustomReservationID",
/// cacheNodeCount: 3,
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
/// example_reserved_cache_node = aws.elasticache.ReservedCacheNode("example",
/// reserved_cache_nodes_offering_id=example.offering_id,
/// id="optionalCustomReservationID",
/// cache_node_count=3)
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
/// var exampleReservedCacheNode = new Aws.ElastiCache.ReservedCacheNode("example", new()
/// {
/// ReservedCacheNodesOfferingId = example.Apply(getReservedCacheNodeOfferingResult => getReservedCacheNodeOfferingResult.OfferingId),
/// Id = "optionalCustomReservationID",
/// CacheNodeCount = 3,
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
/// example, err := elasticache.GetReservedCacheNodeOffering(ctx, &elasticache.GetReservedCacheNodeOfferingArgs{
/// CacheNodeType:      "cache.t4g.small",
/// Duration:           "P1Y",
/// OfferingType:       "No Upfront",
/// ProductDescription: "redis",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = elasticache.NewReservedCacheNode(ctx, "example", &elasticache.ReservedCacheNodeArgs{
/// ReservedCacheNodesOfferingId: pulumi.String(example.OfferingId),
/// Id:                           "optionalCustomReservationID",
/// CacheNodeCount:               pulumi.Int(3),
/// })
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
/// import com.pulumi.aws.elasticache.ReservedCacheNode;
/// import com.pulumi.aws.elasticache.ReservedCacheNodeArgs;
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
/// var exampleReservedCacheNode = new ReservedCacheNode("exampleReservedCacheNode", ReservedCacheNodeArgs.builder()
/// .reservedCacheNodesOfferingId(example.offeringId())
/// .id("optionalCustomReservationID")
/// .cacheNodeCount(3)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleReservedCacheNode:
/// type: aws:elasticache:ReservedCacheNode
/// name: example
/// properties:
/// reservedCacheNodesOfferingId: ${example.offeringId}
/// id: optionalCustomReservationID
/// cacheNodeCount: 3
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
///
/// ## Import
///
/// Using `pulumi import`, import ElastiCache Reserved Cache Node using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:elasticache/reservedCacheNode:ReservedCacheNode example CustomReservationID
/// ```
class ReservedCacheNode extends CustomResource {
  /// ARN for the reserved cache node.
  late final Output<String> arn;

  /// Number of cache node instances to reserve.
  /// Default value is <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>.
  late final Output<int> cacheNodeCount;

  /// Node type for the reserved cache nodes.
  late final Output<String> cacheNodeType;

  /// Duration of the reservation as an RFC3339 duration.
  late final Output<String> duration;

  /// Fixed price charged for this reserved cache node.
  late final Output<double> fixedPrice;

  /// Offering type of this reserved cache node.
  late final Output<String> offeringType;

  /// Engine type for the reserved cache node.
  late final Output<String> productDescription;

  /// Recurring price charged to run this reserved cache node.
  late final Output<List<ReservedCacheNodeRecurringCharge>> recurringCharges;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ID of the reserved cache node offering to purchase.
  /// To determine an <span pulumi-lang-nodejs="`reservedCacheNodesOfferingId`" pulumi-lang-dotnet="`ReservedCacheNodesOfferingId`" pulumi-lang-go="`reservedCacheNodesOfferingId`" pulumi-lang-python="`reserved_cache_nodes_offering_id`" pulumi-lang-yaml="`reservedCacheNodesOfferingId`" pulumi-lang-java="`reservedCacheNodesOfferingId`">`reserved_cache_nodes_offering_id`</span>, see the <span pulumi-lang-nodejs="`aws.elasticache.getReservedCacheNodeOffering`" pulumi-lang-dotnet="`aws.elasticache.getReservedCacheNodeOffering`" pulumi-lang-go="`elasticache.getReservedCacheNodeOffering`" pulumi-lang-python="`elasticache_get_reserved_cache_node_offering`" pulumi-lang-yaml="`aws.elasticache.getReservedCacheNodeOffering`" pulumi-lang-java="`aws.elasticache.getReservedCacheNodeOffering`">`aws.elasticache.getReservedCacheNodeOffering`</span> data source.
  ///
  /// The following arguments are optional:
  late final Output<String> reservedCacheNodesOfferingId;

  /// Time the reservation started.
  late final Output<String> startTime;

  /// State of the reserved cache node.
  late final Output<String> state;

  /// Map of tags to assign to the reservation. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<ReservedCacheNodeTimeouts?> timeouts;

  /// Hourly price charged for this reserved cache node.
  late final Output<double> usagePrice;

  ReservedCacheNode(
    String name, {
    ReservedCacheNodeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:elasticache/reservedCacheNode:ReservedCacheNode',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.cacheNodeCount = registerOutput<int>('cacheNodeCount');
    this.cacheNodeType = registerOutput<String>('cacheNodeType');
    this.duration = registerOutput<String>('duration');
    this.fixedPrice = registerOutput<double>('fixedPrice');
    this.offeringType = registerOutput<String>('offeringType');
    this.productDescription = registerOutput<String>('productDescription');
    this.recurringCharges =
        registerOutput<List<ReservedCacheNodeRecurringCharge>>(
            'recurringCharges');
    this.region = registerOutput<String>('region');
    this.reservedCacheNodesOfferingId =
        registerOutput<String>('reservedCacheNodesOfferingId');
    this.startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ReservedCacheNodeTimeouts?>('timeouts');
    this.usagePrice = registerOutput<double>('usagePrice');
  }
}
