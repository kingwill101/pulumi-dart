// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../reserved_cache_node_timeouts/reserved_cache_node_timeouts.dart';

/// The set of arguments for ReservedCacheNode.
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

  ReservedCacheNodeArgs({
    this.cacheNodeCount,
    this.region,
    required this.reservedCacheNodesOfferingId,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cacheNodeCountValue = cacheNodeCount;
    if (cacheNodeCountValue != null) {
      map['cacheNodeCount'] = cacheNodeCountValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['reservedCacheNodesOfferingId'] = reservedCacheNodesOfferingId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          ReservedCacheNodeTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ReservedCacheNodeArgs.fromMap(Map<String, dynamic> map) {
    return ReservedCacheNodeArgs(
      cacheNodeCount: pulumi.Input.asOptionalInput<int>(map['cacheNodeCount']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      reservedCacheNodesOfferingId:
          pulumi.Input.asInput<String>(map['reservedCacheNodesOfferingId']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<ReservedCacheNodeTimeouts>(
          map['timeouts']),
    );
  }
}
