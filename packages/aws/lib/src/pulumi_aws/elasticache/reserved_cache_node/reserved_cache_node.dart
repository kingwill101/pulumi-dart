import 'package:pulumi/pulumi.dart' as pulumi;
import '../reserved_cache_node_recurring_charge/reserved_cache_node_recurring_charge.dart';
import '../reserved_cache_node_timeouts/reserved_cache_node_timeouts.dart';
import 'reserved_cache_node_args.dart';

/// Manages an ElastiCache Reserved Cache Node.
///
/// > **NOTE:** Once created, a reservation is valid for the `duration` of the provided `offering_id` and cannot be deleted. Performing a `destroy` will only remove the resource from state. For more information see [ElastiCache Reserved Nodes Documentation](https://aws.amazon.com/elasticache/reserved-cache-nodes/) and [PurchaseReservedCacheNodesOffering](https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_PurchaseReservedCacheNodesOffering.html).
///
/// > **NOTE:** Due to the expense of testing this resource, we provide it as best effort. If you find it useful, and have the ability to help test or notice issues, consider reaching out to us on GitHub.
///
/// ## Example Usage
///
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

  /// Fixed price charged for this reserved cache node.
  late final pulumi.Output<double> fixedPrice;

  /// Offering type of this reserved cache node.
  late final pulumi.Output<String> offeringType;

  /// Engine type for the reserved cache node.
  late final pulumi.Output<String> productDescription;

  /// Recurring price charged to run this reserved cache node.
  late final pulumi.Output<List<ReservedCacheNodeRecurringCharge>>
      recurringCharges;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ID of the reserved cache node offering to purchase.
  /// To determine an `reserved_cache_nodes_offering_id`, see the `aws.elasticache.getReservedCacheNodeOffering` data source.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> reservedCacheNodesOfferingId;

  /// Time the reservation started.
  late final pulumi.Output<String> startTime;

  /// State of the reserved cache node.
  late final pulumi.Output<String> state;

  /// Map of tags to assign to the reservation. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ReservedCacheNodeTimeouts?> timeouts;

  /// Hourly price charged for this reserved cache node.
  late final pulumi.Output<double> usagePrice;

  ReservedCacheNode(
    String name, {
    ReservedCacheNodeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elasticache/reservedCacheNode:ReservedCacheNode',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
