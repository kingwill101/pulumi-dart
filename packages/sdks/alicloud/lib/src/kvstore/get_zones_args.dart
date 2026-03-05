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
    this.engine,
    this.instanceChargeType,
    this.multi,
    this.outputFile,
    this.productType,
  });

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
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceChargeType: (() { final guardedValue = map['instanceChargeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multi: (() { final guardedValue = map['multi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productType: (() { final guardedValue = map['productType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

