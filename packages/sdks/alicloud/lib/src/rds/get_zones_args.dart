// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_get_zones_get_zones_args_doc}
/// Arguments for getZones.
/// {@endtemplate}
/// {@macro pulumi_rds_get_zones_get_zones_args_doc}
class GetZonesArgs {
  /// DB Instance category. the value like [`Basic`, `HighAvailability`, `Finance`, `AlwaysOn`, `serverless_basic`, `serverless_standard`, `serverless_ha`, `cluster`], [detail info](https://www.alibabacloud.com/help/doc-detail/69795.htm).
  final pulumi.Input<String>? category;
  /// The DB instance storage space required by the user. Valid values: "cloud_ssd", "local_ssd", "cloud_essd", "cloud_essd2", "cloud_essd3".
  final pulumi.Input<String>? dbInstanceStorageType;
  /// Database type. Valid values: "MySQL", "SQLServer", "PostgreSQL", "MariaDB". If not set, it will match all of engines.
  final pulumi.Input<String>? engine;
  /// Database version required by the user. Value options can refer to the latest docs [detail info](https://www.alibabacloud.com/help/doc-detail/26228.htm) `EngineVersion`.
  final pulumi.Input<String>? engineVersion;
  /// Filter the results by a specific instance charge type. Valid values: `PrePaid` and `PostPaid` and `Serverless`. Default to `PostPaid`.
  final pulumi.Input<String>? instanceChargeType;
  /// It has been deprecated from version 1.137.0 and using `multi_zone` instead.
  final pulumi.Input<bool>? multi;
  /// Indicate whether the zones can be used in a multi AZ configuration. Default to `false`. Multi AZ is usually used to launch RDS instances.
  final pulumi.Input<bool>? multiZone;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetZonesArgs].
  /// [category] DB Instance category. the value like [`Basic`, `HighAvailability`, `Finance`, `AlwaysOn`, `serverless_basic`, `serverless_standard`, `serverless_ha`, `cluster`], [detail info](https://www.alibabacloud.com/help/doc-detail/69795.htm).
  /// [dbInstanceStorageType] The DB instance storage space required by the user. Valid values: "cloud_ssd", "local_ssd", "cloud_essd", "cloud_essd2", "cloud_essd3".
  /// [engine] Database type. Valid values: "MySQL", "SQLServer", "PostgreSQL", "MariaDB". If not set, it will match all of engines.
  /// [engineVersion] Database version required by the user. Value options can refer to the latest docs [detail info](https://www.alibabacloud.com/help/doc-detail/26228.htm) `EngineVersion`.
  /// [instanceChargeType] Filter the results by a specific instance charge type. Valid values: `PrePaid` and `PostPaid` and `Serverless`. Default to `PostPaid`.
  /// [multi] It has been deprecated from version 1.137.0 and using `multi_zone` instead.
  /// [multiZone] Indicate whether the zones can be used in a multi AZ configuration. Default to `false`. Multi AZ is usually used to launch RDS instances.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetZonesArgs({
    this.category,
    this.dbInstanceStorageType,
    this.engine,
    this.engineVersion,
    this.instanceChargeType,
    this.multi,
    this.multiZone,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'dbInstanceStorageType': ?dbInstanceStorageType,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'instanceChargeType': ?instanceChargeType,
      'multi': ?multi,
      'multiZone': ?multiZone,
      'outputFile': ?outputFile,
    };
  }

  factory GetZonesArgs.fromMap(Map<String, dynamic> map) {
    return GetZonesArgs(
      category: map['category'] == null ? null : (map['category']! as String).input(),
      dbInstanceStorageType: map['dbInstanceStorageType'] == null ? null : (map['dbInstanceStorageType']! as String).input(),
      engine: map['engine'] == null ? null : (map['engine']! as String).input(),
      engineVersion: map['engineVersion'] == null ? null : (map['engineVersion']! as String).input(),
      instanceChargeType: map['instanceChargeType'] == null ? null : (map['instanceChargeType']! as String).input(),
      multi: map['multi'] == null ? null : (map['multi']! as bool).input(),
      multiZone: map['multiZone'] == null ? null : (map['multiZone']! as bool).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
    );
  }
}

