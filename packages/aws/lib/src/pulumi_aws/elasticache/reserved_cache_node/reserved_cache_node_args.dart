// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../reserved_cache_node_timeouts/reserved_cache_node_timeouts.dart';

/// The set of arguments for ReservedCacheNode.
class ReservedCacheNodeArgs {
  /// Number of cache node instances to reserve.
  /// Default value is <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>.
  final Input<int>? cacheNodeCount;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ID of the reserved cache node offering to purchase.
  /// To determine an <span pulumi-lang-nodejs="`reservedCacheNodesOfferingId`" pulumi-lang-dotnet="`ReservedCacheNodesOfferingId`" pulumi-lang-go="`reservedCacheNodesOfferingId`" pulumi-lang-python="`reserved_cache_nodes_offering_id`" pulumi-lang-yaml="`reservedCacheNodesOfferingId`" pulumi-lang-java="`reservedCacheNodesOfferingId`">`reserved_cache_nodes_offering_id`</span>, see the <span pulumi-lang-nodejs="`aws.elasticache.getReservedCacheNodeOffering`" pulumi-lang-dotnet="`aws.elasticache.getReservedCacheNodeOffering`" pulumi-lang-go="`elasticache.getReservedCacheNodeOffering`" pulumi-lang-python="`elasticache_get_reserved_cache_node_offering`" pulumi-lang-yaml="`aws.elasticache.getReservedCacheNodeOffering`" pulumi-lang-java="`aws.elasticache.getReservedCacheNodeOffering`">`aws.elasticache.getReservedCacheNodeOffering`</span> data source.
  ///
  /// The following arguments are optional:
  final Input<String> reservedCacheNodesOfferingId;

  /// Map of tags to assign to the reservation. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<ReservedCacheNodeTimeouts>? timeouts;

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
      map['timeouts'] = Input.mapOptionalInputValue<ReservedCacheNodeTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ReservedCacheNodeArgs.fromMap(Map<String, dynamic> map) {
    return ReservedCacheNodeArgs(
      cacheNodeCount: Input.asOptionalInput<int>(map['cacheNodeCount']),
      region: Input.asOptionalInput<String>(map['region']),
      reservedCacheNodesOfferingId:
          Input.asInput<String>(map['reservedCacheNodesOfferingId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          Input.asOptionalInput<ReservedCacheNodeTimeouts>(map['timeouts']),
    );
  }
}
