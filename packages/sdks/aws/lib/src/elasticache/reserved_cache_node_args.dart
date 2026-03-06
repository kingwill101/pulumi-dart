// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reserved_cache_node_timeouts.dart';

/// {@template pulumi_elasticache_reserved_cache_node_reserved_cache_node_args_doc}
/// The set of arguments for ReservedCacheNode.
/// {@endtemplate}
/// {@macro pulumi_elasticache_reserved_cache_node_reserved_cache_node_args_doc}
class ReservedCacheNodeArgs {
  /// Number of cache node instances to reserve.
  /// Default value is `1`.
  final pulumi.Input<int>? cacheNodeCount;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the reserved cache node offering to purchase.
  /// To determine an `reserved_cache_nodes_offering_id`, see the `aws.elasticache.getReservedCacheNodeOffering` data source.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> reservedCacheNodesOfferingId;
  /// Map of tags to assign to the reservation. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<ReservedCacheNodeTimeouts>? timeouts;

  /// Creates a new [ReservedCacheNodeArgs].
  /// [cacheNodeCount] Number of cache node instances to reserve.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [reservedCacheNodesOfferingId] ID of the reserved cache node offering to purchase.
  /// [tags] Map of tags to assign to the reservation. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const ReservedCacheNodeArgs({
    this.cacheNodeCount,
    this.region,
    required this.reservedCacheNodesOfferingId,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheNodeCount': ?cacheNodeCount,
      'region': ?region,
      'reservedCacheNodesOfferingId': reservedCacheNodesOfferingId,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ReservedCacheNodeTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ReservedCacheNodeArgs.fromMap(Map<String, dynamic> map) {
    return ReservedCacheNodeArgs(
      cacheNodeCount: (() { final guardedValue = map['cacheNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservedCacheNodesOfferingId: pulumi.Input.fromValue(map['reservedCacheNodesOfferingId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReservedCacheNodeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

