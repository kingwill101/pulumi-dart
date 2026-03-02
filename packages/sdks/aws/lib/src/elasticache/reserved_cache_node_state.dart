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
    this.arn,
    this.cacheNodeCount,
    this.cacheNodeType,
    this.duration,
    this.fixedPrice,
    this.offeringType,
    this.productDescription,
    this.recurringCharges,
    this.region,
    this.reservedCacheNodesOfferingId,
    this.startTime,
    this.state,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.usagePrice,
  });

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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      cacheNodeCount: map['cacheNodeCount'] == null ? null : (map['cacheNodeCount'] as int).input(),
      cacheNodeType: map['cacheNodeType'] == null ? null : (map['cacheNodeType'] as String).input(),
      duration: map['duration'] == null ? null : (map['duration'] as String).input(),
      fixedPrice: map['fixedPrice'] == null ? null : (map['fixedPrice'] as double).input(),
      offeringType: map['offeringType'] == null ? null : (map['offeringType'] as String).input(),
      productDescription: map['productDescription'] == null ? null : (map['productDescription'] as String).input(),
      recurringCharges: map['recurringCharges'] == null ? null : (pulumi.Input.decodeList<ReservedCacheNodeRecurringCharge>(map['recurringCharges'], (value) => ReservedCacheNodeRecurringCharge.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      reservedCacheNodesOfferingId: map['reservedCacheNodesOfferingId'] == null ? null : (map['reservedCacheNodesOfferingId'] as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      timeouts: map['timeouts'] == null ? null : (ReservedCacheNodeTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
      usagePrice: map['usagePrice'] == null ? null : (map['usagePrice'] as double).input(),
    );
  }
}

