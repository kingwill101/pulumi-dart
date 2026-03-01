// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reserved_cache_node_recurring_charge.dart';
import 'reserved_cache_node_timeouts.dart';

/// Input properties used for looking up and filtering ReservedCacheNode resources.
class ReservedCacheNodeState {
  /// ARN for the reserved cache node.
  final pulumi.Input<String>? arn;
  /// Number of cache node instances to reserve.
  /// Default value is `1`.
  final pulumi.Input<int>? cacheNodeCount;
  /// Node type for the reserved cache nodes.
  final pulumi.Input<String>? cacheNodeType;
  /// Duration of the reservation as an RFC3339 duration.
  final pulumi.Input<String>? duration;
  /// Fixed price charged for this reserved cache node.
  final pulumi.Input<double>? fixedPrice;
  /// Offering type of this reserved cache node.
  final pulumi.Input<String>? offeringType;
  /// Engine type for the reserved cache node.
  final pulumi.Input<String>? productDescription;
  /// Recurring price charged to run this reserved cache node.
  final pulumi.Input<List<ReservedCacheNodeRecurringCharge>>? recurringCharges;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the reserved cache node offering to purchase.
  /// To determine an `reserved_cache_nodes_offering_id`, see the `aws.elasticache.getReservedCacheNodeOffering` data source.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? reservedCacheNodesOfferingId;
  /// Time the reservation started.
  final pulumi.Input<String>? startTime;
  /// State of the reserved cache node.
  final pulumi.Input<String>? state;
  /// Map of tags to assign to the reservation. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<ReservedCacheNodeTimeouts>? timeouts;
  /// Hourly price charged for this reserved cache node.
  final pulumi.Input<double>? usagePrice;

  /// Creates a new [ReservedCacheNodeState].
  /// [arn] ARN for the reserved cache node.
  /// [cacheNodeCount] Number of cache node instances to reserve.
  /// [cacheNodeType] Node type for the reserved cache nodes.
  /// [duration] Duration of the reservation as an RFC3339 duration.
  /// [fixedPrice] Fixed price charged for this reserved cache node.
  /// [offeringType] Offering type of this reserved cache node.
  /// [productDescription] Engine type for the reserved cache node.
  /// [recurringCharges] Recurring price charged to run this reserved cache node.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [reservedCacheNodesOfferingId] ID of the reserved cache node offering to purchase.
  /// [startTime] Time the reservation started.
  /// [state] State of the reserved cache node.
  /// [tags] Map of tags to assign to the reservation. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  /// [usagePrice] Hourly price charged for this reserved cache node.
  ReservedCacheNodeState({
    pulumi.Output<String>? arn,
    pulumi.Output<int>? cacheNodeCount,
    pulumi.Output<String>? cacheNodeType,
    pulumi.Output<String>? duration,
    pulumi.Output<double>? fixedPrice,
    pulumi.Output<String>? offeringType,
    pulumi.Output<String>? productDescription,
    pulumi.Output<List<ReservedCacheNodeRecurringCharge>>? recurringCharges,
    pulumi.Output<String>? region,
    pulumi.Output<String>? reservedCacheNodesOfferingId,
    pulumi.Output<String>? startTime,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<ReservedCacheNodeTimeouts>? timeouts,
    pulumi.Output<double>? usagePrice,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      cacheNodeCount = pulumi.Input.asOptionalInput<int>(cacheNodeCount),
      cacheNodeType = pulumi.Input.asOptionalInput<String>(cacheNodeType),
      duration = pulumi.Input.asOptionalInput<String>(duration),
      fixedPrice = pulumi.Input.asOptionalInput<double>(fixedPrice),
      offeringType = pulumi.Input.asOptionalInput<String>(offeringType),
      productDescription = pulumi.Input.asOptionalInput<String>(productDescription),
      recurringCharges = pulumi.Input.asOptionalInput<List<ReservedCacheNodeRecurringCharge>>(recurringCharges),
      region = pulumi.Input.asOptionalInput<String>(region),
      reservedCacheNodesOfferingId = pulumi.Input.asOptionalInput<String>(reservedCacheNodesOfferingId),
      startTime = pulumi.Input.asOptionalInput<String>(startTime),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<ReservedCacheNodeTimeouts>(timeouts),
      usagePrice = pulumi.Input.asOptionalInput<double>(usagePrice);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'cacheNodeCount': ?cacheNodeCount,
      'cacheNodeType': ?cacheNodeType,
      'duration': ?duration,
      'fixedPrice': ?fixedPrice,
      'offeringType': ?offeringType,
      'productDescription': ?productDescription,
      'recurringCharges': ?pulumi.Input.mapOptionalInputValue<List<ReservedCacheNodeRecurringCharge>, List<Map<String, dynamic>>>(recurringCharges, (value) => pulumi.Input.encodeList<ReservedCacheNodeRecurringCharge, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'reservedCacheNodesOfferingId': ?reservedCacheNodesOfferingId,
      'startTime': ?startTime,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ReservedCacheNodeTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'usagePrice': ?usagePrice,
    };
  }

  factory ReservedCacheNodeState.fromMap(Map<String, dynamic> map) {
    return ReservedCacheNodeState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      cacheNodeCount: map['cacheNodeCount'] == null ? null : pulumi.Output.create<int>(map['cacheNodeCount'] as int),
      cacheNodeType: map['cacheNodeType'] == null ? null : pulumi.Output.create<String>(map['cacheNodeType'] as String),
      duration: map['duration'] == null ? null : pulumi.Output.create<String>(map['duration'] as String),
      fixedPrice: map['fixedPrice'] == null ? null : pulumi.Output.create<double>(map['fixedPrice'] as double),
      offeringType: map['offeringType'] == null ? null : pulumi.Output.create<String>(map['offeringType'] as String),
      productDescription: map['productDescription'] == null ? null : pulumi.Output.create<String>(map['productDescription'] as String),
      recurringCharges: map['recurringCharges'] == null ? null : pulumi.Output.create<List<ReservedCacheNodeRecurringCharge>>(pulumi.Input.decodeList<ReservedCacheNodeRecurringCharge>(map['recurringCharges'], (value) => ReservedCacheNodeRecurringCharge.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      reservedCacheNodesOfferingId: map['reservedCacheNodesOfferingId'] == null ? null : pulumi.Output.create<String>(map['reservedCacheNodesOfferingId'] as String),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<String>(map['startTime'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ReservedCacheNodeTimeouts>(ReservedCacheNodeTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      usagePrice: map['usagePrice'] == null ? null : pulumi.Output.create<double>(map['usagePrice'] as double),
    );
  }
}

