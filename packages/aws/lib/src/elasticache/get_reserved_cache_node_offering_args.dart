// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elasticache_get_reserved_cache_node_offering_get_reserved_cache_node_offering_args_doc}
/// Arguments for getReservedCacheNodeOffering.
/// {@endtemplate}
/// {@macro pulumi_elasticache_get_reserved_cache_node_offering_get_reserved_cache_node_offering_args_doc}
class GetReservedCacheNodeOfferingArgs {
  /// Node type for the reserved cache node.
  /// See AWS documentation for information on [supported node types for Redis](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html) and [guidance on selecting node types for Redis](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/nodes-select-size.html).
  /// See AWS documentation for information on [supported node types for Memcached](https://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/CacheNodes.SupportedTypes.html) and [guidance on selecting node types for Memcached](https://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/nodes-select-size.html).
  final pulumi.Input<String> cacheNodeType;
  /// Duration of the reservation in RFC3339 duration format.
  /// Valid values are `P1Y` (one year) and `P3Y` (three years).
  final pulumi.Input<String> duration;
  /// Offering type of this reserved cache node.
  /// For the latest generation of nodes (e.g. M5, R5, T4 and newer) valid values are `No Upfront`, `Partial Upfront`, and `All Upfront`.
  /// For other current generation nodes (i.e. T2, M3, M4, R3, or R4) the only valid value is `Heavy Utilization`.
  /// For previous generation modes (i.e. T1, M1, M2, or C1) valid values are `Heavy Utilization`, `Medium Utilization`, and `Light Utilization`.
  final pulumi.Input<String> offeringType;
  /// Engine type for the reserved cache node.
  /// Valid values are `redis`, `valkey` and `memcached`.
  final pulumi.Input<String> productDescription;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetReservedCacheNodeOfferingArgs].
  /// [cacheNodeType] Node type for the reserved cache node.
  /// [duration] Duration of the reservation in RFC3339 duration format.
  /// [offeringType] Offering type of this reserved cache node.
  /// [productDescription] Engine type for the reserved cache node.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetReservedCacheNodeOfferingArgs({
    required String cacheNodeType,
    required String duration,
    required String offeringType,
    required String productDescription,
    String? region,
  }) :
      cacheNodeType = pulumi.Input.asInput<String>(cacheNodeType),
      duration = pulumi.Input.asInput<String>(duration),
      offeringType = pulumi.Input.asInput<String>(offeringType),
      productDescription = pulumi.Input.asInput<String>(productDescription),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheNodeType': cacheNodeType,
      'duration': duration,
      'offeringType': offeringType,
      'productDescription': productDescription,
      'region': ?region,
    };
  }

  factory GetReservedCacheNodeOfferingArgs.fromMap(Map<String, dynamic> map) {
    return GetReservedCacheNodeOfferingArgs(
      cacheNodeType: map['cacheNodeType'] as String,
      duration: map['duration'] as String,
      offeringType: map['offeringType'] as String,
      productDescription: map['productDescription'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

