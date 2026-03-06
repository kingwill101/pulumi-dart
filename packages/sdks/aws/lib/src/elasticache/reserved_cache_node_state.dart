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
  const ReservedCacheNodeState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheNodeCount: (() { final guardedValue = map['cacheNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cacheNodeType: (() { final guardedValue = map['cacheNodeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fixedPrice: (() { final guardedValue = map['fixedPrice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      offeringType: (() { final guardedValue = map['offeringType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productDescription: (() { final guardedValue = map['productDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recurringCharges: (() { final guardedValue = map['recurringCharges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReservedCacheNodeRecurringCharge>(guardedValue, (value) => ReservedCacheNodeRecurringCharge.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservedCacheNodesOfferingId: (() { final guardedValue = map['reservedCacheNodesOfferingId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReservedCacheNodeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      usagePrice: (() { final guardedValue = map['usagePrice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

