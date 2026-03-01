// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kvstore_get_zones_get_zones_args_doc}
/// Arguments for getZones.
/// {@endtemplate}
/// {@macro pulumi_kvstore_get_zones_get_zones_args_doc}
class GetZonesArgs {
  /// Database type. Options are `Redis`, `Memcache`. Default to `Redis`.
  /// * product_type - (Optional, Available since v1.130.0+) The type of the service. Valid values: `Local`, `Tair_rdb`, `Tair_scm`, `Tair_essd`, `OnECS`.
  final pulumi.Input<String>? engine;
  /// Filter the results by a specific instance charge type. Valid values: `PrePaid` and `PostPaid`. Default to `PostPaid`.
  final pulumi.Input<String>? instanceChargeType;
  /// Indicate whether the zones can be used in a multi AZ configuration. Default to `false`. Multi AZ is usually used to launch Tair (Redis OSS-Compatible) And Memcache (KVStore) instances.
  final pulumi.Input<bool>? multi;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<String>? productType;

  /// Creates a new [GetZonesArgs].
  /// [engine] Database type. Options are `Redis`, `Memcache`. Default to `Redis`.
  /// [instanceChargeType] Filter the results by a specific instance charge type. Valid values: `PrePaid` and `PostPaid`. Default to `PostPaid`.
  /// [multi] Indicate whether the zones can be used in a multi AZ configuration. Default to `false`. Multi AZ is usually used to launch Tair (Redis OSS-Compatible) And Memcache (KVStore) instances.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [productType] Optional.
  GetZonesArgs({
    String? engine,
    String? instanceChargeType,
    bool? multi,
    String? outputFile,
    String? productType,
  }) :
      engine = pulumi.Input.asOptionalInput<String>(engine),
      instanceChargeType = pulumi.Input.asOptionalInput<String>(instanceChargeType),
      multi = pulumi.Input.asOptionalInput<bool>(multi),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      productType = pulumi.Input.asOptionalInput<String>(productType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': ?engine,
      'instanceChargeType': ?instanceChargeType,
      'multi': ?multi,
      'outputFile': ?outputFile,
      'productType': ?productType,
    };
  }

  factory GetZonesArgs.fromMap(Map<String, dynamic> map) {
    return GetZonesArgs(
      engine: map['engine'] == null ? null : map['engine'] as String,
      instanceChargeType: map['instanceChargeType'] == null ? null : map['instanceChargeType'] as String,
      multi: map['multi'] == null ? null : map['multi'] as bool,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      productType: map['productType'] == null ? null : map['productType'] as String,
    );
  }
}

