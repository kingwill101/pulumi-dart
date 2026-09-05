import 'package:pulumi/pulumi.dart' as pulumi;
import 'reserved_cache_node_args.dart';
import 'reserved_cache_node_recurring_charge.dart';
import 'reserved_cache_node_state.dart';
import 'reserved_cache_node_timeouts.dart';

/// Manages an ElastiCache Reserved Cache Node.
///
/// &gt; **NOTE:** Once created, a reservation is valid for the `duration` of the provided `offeringId` and cannot be deleted. Performing a `destroy` will only remove the resource from state. For more information see [ElastiCache Reserved Nodes Documentation](https://aws.amazon.com/elasticache/reserved-cache-nodes/) and [PurchaseReservedCacheNodesOffering](https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_PurchaseReservedCacheNodesOffering.html).
///
/// &gt; **NOTE:** Due to the expense of testing this resource, we provide it as best effort. If you find it useful, and have the ability to help test or notice issues, consider reaching out to us on GitHub.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.elasticache.getReservedCacheNodeOffering({
///     cacheNodeType: "cache.t4g.small",
///     duration: "P1Y",
///     offeringType: "No Upfront",
///     productDescription: "redis",
/// });
/// const exampleReservedCacheNode = new aws.elasticache.ReservedCacheNode("example", {
///     reservedCacheNodesOfferingId: example.then(example => example.offeringId),
///     elasticacheReservedCacheNodeId: "optionalCustomReservationID",
///     cacheNodeCount: 3,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.elasticache.get_reserved_cache_node_offering(cache_node_type="cache.t4g.small",
///     duration="P1Y",
///     offering_type="No Upfront",
///     product_description="redis")
/// example_reserved_cache_node = aws.elasticache.ReservedCacheNode("example",
///     reserved_cache_nodes_offering_id=example.offering_id,
///     elasticache_reserved_cache_node_id="optionalCustomReservationID",
///     cache_node_count=3)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ElastiCache.GetReservedCacheNodeOffering.Invoke(new()
///     {
///         CacheNodeType = "cache.t4g.small",
///         Duration = "P1Y",
///         OfferingType = "No Upfront",
///         ProductDescription = "redis",
///     });
///
///     var exampleReservedCacheNode = new Aws.ElastiCache.ReservedCacheNode("example", new()
///     {
///         ReservedCacheNodesOfferingId = example.Apply(getReservedCacheNodeOfferingResult => getReservedCacheNodeOfferingResult.OfferingId),
///         ElasticacheReservedCacheNodeId = "optionalCustomReservationID",
///         CacheNodeCount = 3,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticache"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := elasticache.GetReservedCacheNodeOffering(ctx, &elasticache.GetReservedCacheNodeOfferingArgs{
/// 			CacheNodeType:      "cache.t4g.small",
/// 			Duration:           "P1Y",
/// 			OfferingType:       "No Upfront",
/// 			ProductDescription: "redis",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = elasticache.NewReservedCacheNode(ctx, "example", &elasticache.ReservedCacheNodeArgs{
/// 			ReservedCacheNodesOfferingId:   pulumi.String(example.OfferingId),
/// 			ElasticacheReservedCacheNodeId: pulumi.String("optionalCustomReservationID"),
/// 			CacheNodeCount:                 pulumi.Int(3),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_elasticache_getreservedcachenodeoffering" "example" {
///   cache_node_type     = "cache.t4g.small"
///   duration            = "P1Y"
///   offering_type       = "No Upfront"
///   product_description = "redis"
/// }
///
/// resource "aws_elasticache_reservedcachenode" "example" {
///   reserved_cache_nodes_offering_id   = data.aws_elasticache_getreservedcachenodeoffering.example.offering_id
///   elasticache_reserved_cache_node_id = "optionalCustomReservationID"
///   cache_node_count                   = 3
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = ElasticacheFunctions.getReservedCacheNodeOffering(GetReservedCacheNodeOfferingArgs.builder()
///             .cacheNodeType("cache.t4g.small")
///             .duration("P1Y")
///             .offeringType("No Upfront")
///             .productDescription("redis")
///             .build());
///
///         var exampleReservedCacheNode = new ReservedCacheNode("exampleReservedCacheNode", ReservedCacheNodeArgs.builder()
///             .reservedCacheNodesOfferingId(example.offeringId())
///             .elasticacheReservedCacheNodeId("optionalCustomReservationID")
///             .cacheNodeCount(3)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleReservedCacheNode:
///     type: aws:elasticache:ReservedCacheNode
///     name: example
///     properties:
///       reservedCacheNodesOfferingId: ${example.offeringId}
///       elasticacheReservedCacheNodeId: optionalCustomReservationID
///       cacheNodeCount: 3
/// variables:
///   example:
///     fn::invoke:
///       function: aws:elasticache:getReservedCacheNodeOffering
///       arguments:
///         cacheNodeType: cache.t4g.small
///         duration: P1Y
///         offeringType: No Upfront
///         productDescription: redis
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import ElastiCache Reserved Cache Node using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:elasticache/reservedCacheNode:ReservedCacheNode example CustomReservationID
/// ```
class ReservedCacheNode extends pulumi.CustomResource {
  /// ARN for the reserved cache node.
  late final pulumi.Output<String> arn;
  /// Number of cache node instances to reserve.
  /// Default value is `1`.
  late final pulumi.Output<int> cacheNodeCount;
  /// Node type for the reserved cache nodes.
  late final pulumi.Output<String> cacheNodeType;
  /// Duration of the reservation as an RFC3339 duration.
  late final pulumi.Output<String> duration;
  /// Customer-specified identifier to track this reservation.
  /// If not specified, AWS will assign a random ID.
  late final pulumi.Output<String> elasticacheReservedCacheNodeId;
  /// Fixed price charged for this reserved cache node.
  late final pulumi.Output<double> fixedPrice;
  /// Offering type of this reserved cache node.
  late final pulumi.Output<String> offeringType;
  /// Engine type for the reserved cache node.
  late final pulumi.Output<String> productDescription;
  /// Recurring price charged to run this reserved cache node.
  late final pulumi.Output<List<ReservedCacheNodeRecurringCharge>> recurringCharges;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ID of the reserved cache node offering to purchase.
  /// To determine an `reservedCacheNodesOfferingId`, see the `aws.elasticache.getReservedCacheNodeOffering` data source.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> reservedCacheNodesOfferingId;
  /// Time the reservation started.
  late final pulumi.Output<String> startTime;
  /// State of the reserved cache node.
  late final pulumi.Output<String> state;
  /// Map of tags to assign to the reservation. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ReservedCacheNodeTimeouts?> timeouts;
  /// Hourly price charged for this reserved cache node.
  late final pulumi.Output<double> usagePrice;

  /// Creates a new [ReservedCacheNode].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReservedCacheNode]. {@macro pulumi_elasticache_reserved_cache_node_reserved_cache_node_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReservedCacheNode(
    String name, {
    ReservedCacheNodeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elasticache/reservedCacheNode:ReservedCacheNode',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    cacheNodeCount = registerOutput<int>('cacheNodeCount');
    cacheNodeType = registerOutput<String>('cacheNodeType');
    duration = registerOutput<String>('duration');
    elasticacheReservedCacheNodeId = registerOutput<String>('elasticacheReservedCacheNodeId');
    fixedPrice = registerOutput<double>('fixedPrice');
    offeringType = registerOutput<String>('offeringType');
    productDescription = registerOutput<String>('productDescription');
    recurringCharges = registerOutput<List<ReservedCacheNodeRecurringCharge>>('recurringCharges', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReservedCacheNodeRecurringCharge>(guardedValue, (value) => ReservedCacheNodeRecurringCharge.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    reservedCacheNodesOfferingId = registerOutput<String>('reservedCacheNodesOfferingId');
    startTime = registerOutput<String>('startTime');
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<ReservedCacheNodeTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReservedCacheNodeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    usagePrice = registerOutput<double>('usagePrice');
  }

  /// Gets an existing [ReservedCacheNode] resource's state with the given [name] and [id].
  static ReservedCacheNode get(
    String name,
    pulumi.Input<String> id, {
    ReservedCacheNodeState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ReservedCacheNode._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ReservedCacheNode._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elasticache/reservedCacheNode:ReservedCacheNode',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    cacheNodeCount = registerOutput<int>('cacheNodeCount');
    cacheNodeType = registerOutput<String>('cacheNodeType');
    duration = registerOutput<String>('duration');
    elasticacheReservedCacheNodeId = registerOutput<String>('elasticacheReservedCacheNodeId');
    fixedPrice = registerOutput<double>('fixedPrice');
    offeringType = registerOutput<String>('offeringType');
    productDescription = registerOutput<String>('productDescription');
    recurringCharges = registerOutput<List<ReservedCacheNodeRecurringCharge>>('recurringCharges', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReservedCacheNodeRecurringCharge>(guardedValue, (value) => ReservedCacheNodeRecurringCharge.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    reservedCacheNodesOfferingId = registerOutput<String>('reservedCacheNodesOfferingId');
    startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<ReservedCacheNodeTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReservedCacheNodeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    usagePrice = registerOutput<double>('usagePrice');
  }

  /// Creates a typed reference to an existing [ReservedCacheNode] resource.
  ReservedCacheNode.reference(String urn)
    : super(
        'aws:elasticache/reservedCacheNode:ReservedCacheNode',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    cacheNodeCount = registerOutput<int>('cacheNodeCount');
    cacheNodeType = registerOutput<String>('cacheNodeType');
    duration = registerOutput<String>('duration');
    elasticacheReservedCacheNodeId = registerOutput<String>('elasticacheReservedCacheNodeId');
    fixedPrice = registerOutput<double>('fixedPrice');
    offeringType = registerOutput<String>('offeringType');
    productDescription = registerOutput<String>('productDescription');
    recurringCharges = registerOutput<List<ReservedCacheNodeRecurringCharge>>('recurringCharges', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReservedCacheNodeRecurringCharge>(guardedValue, (value) => ReservedCacheNodeRecurringCharge.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    reservedCacheNodesOfferingId = registerOutput<String>('reservedCacheNodesOfferingId');
    startTime = registerOutput<String>('startTime');
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<ReservedCacheNodeTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReservedCacheNodeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    usagePrice = registerOutput<double>('usagePrice');
  }
}
