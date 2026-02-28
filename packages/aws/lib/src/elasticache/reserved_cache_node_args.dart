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
  ReservedCacheNodeArgs({
    int? cacheNodeCount,
    String? region,
    required String reservedCacheNodesOfferingId,
    Map<String, String>? tags,
    ReservedCacheNodeTimeouts? timeouts,
  }) :
      cacheNodeCount = pulumi.Input.asOptionalInput<int>(cacheNodeCount),
      region = pulumi.Input.asOptionalInput<String>(region),
      reservedCacheNodesOfferingId = pulumi.Input.asInput<String>(reservedCacheNodesOfferingId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<ReservedCacheNodeTimeouts>(timeouts);

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
      cacheNodeCount: map['cacheNodeCount'] == null ? null : map['cacheNodeCount'] as int,
      region: map['region'] == null ? null : map['region'] as String,
      reservedCacheNodesOfferingId: map['reservedCacheNodesOfferingId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null ? null : ReservedCacheNodeTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}

