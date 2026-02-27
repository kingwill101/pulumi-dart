// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getReservedCacheNodeOffering.
class GetReservedCacheNodeOfferingArgs {
  /// Node type for the reserved cache node.
  /// See AWS documentation for information on [supported node types for Redis](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html) and [guidance on selecting node types for Redis](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/nodes-select-size.html).
  /// See AWS documentation for information on [supported node types for Memcached](https://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/CacheNodes.SupportedTypes.html) and [guidance on selecting node types for Memcached](https://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/nodes-select-size.html).
  final Input<String> cacheNodeType;

  /// Duration of the reservation in RFC3339 duration format.
  /// Valid values are `P1Y` (one year) and `P3Y` (three years).
  final Input<String> duration;

  /// Offering type of this reserved cache node.
  /// For the latest generation of nodes (e.g. M5, R5, T4 and newer) valid values are `No Upfront`, `Partial Upfront`, and `All Upfront`.
  /// For other current generation nodes (i.e. T2, M3, M4, R3, or R4) the only valid value is `Heavy Utilization`.
  /// For previous generation modes (i.e. T1, M1, M2, or C1) valid values are `Heavy Utilization`, `Medium Utilization`, and `Light Utilization`.
  final Input<String> offeringType;

  /// Engine type for the reserved cache node.
  /// Valid values are `redis`, `valkey` and `memcached`.
  final Input<String> productDescription;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetReservedCacheNodeOfferingArgs({
    required this.cacheNodeType,
    required this.duration,
    required this.offeringType,
    required this.productDescription,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cacheNodeType'] = cacheNodeType;
    map['duration'] = duration;
    map['offeringType'] = offeringType;
    map['productDescription'] = productDescription;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetReservedCacheNodeOfferingArgs.fromMap(Map<String, dynamic> map) {
    return GetReservedCacheNodeOfferingArgs(
      cacheNodeType: Input.asInput<String>(map['cacheNodeType']),
      duration: Input.asInput<String>(map['duration']),
      offeringType: Input.asInput<String>(map['offeringType']),
      productDescription: Input.asInput<String>(map['productDescription']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
