// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_get_instance_engines_get_instance_engines_args_doc}
/// Arguments for getInstanceEngines.
/// {@endtemplate}
/// {@macro pulumi_rds_get_instance_engines_get_instance_engines_args_doc}
class GetInstanceEnginesArgs {
  /// DB Instance category. the value like [`Basic`, `HighAvailability`, `Finance`, `AlwaysOn`], [detail info](https://www.alibabacloud.com/help/doc-detail/69795.htm).
  final pulumi.Input<String>? category;
  /// The DB instance storage space required by the user. Valid values: "cloud_ssd", "local_ssd", "cloud_essd", "cloud_essd2", "cloud_essd3".
  final pulumi.Input<String>? dbInstanceStorageType;
  /// Database type. Valid values: "MySQL", "SQLServer", "PostgreSQL", "MariaDB". If not set, it will match all of engines.
  final pulumi.Input<String>? engine;
  /// Database version required by the user. Value options can refer to the latest docs [detail info](https://www.alibabacloud.com/help/doc-detail/26228.htm) `EngineVersion`.
  final pulumi.Input<String>? engineVersion;
  /// Filter the results by charge type. Valid values: `PrePaid` and `PostPaid`. Default to `PostPaid`.
  final pulumi.Input<String>? instanceChargeType;
  /// Whether to show multi available zone. Default false to not show multi availability zone.
  final pulumi.Input<bool>? multiZone;
  /// File name where to save data source results (after running `pulumi up`).
  final pulumi.Input<String>? outputFile;
  /// The Zone to launch the DB instance.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [GetInstanceEnginesArgs].
  /// [category] DB Instance category. the value like [`Basic`, `HighAvailability`, `Finance`, `AlwaysOn`], [detail info](https://www.alibabacloud.com/help/doc-detail/69795.htm).
  /// [dbInstanceStorageType] The DB instance storage space required by the user. Valid values: "cloud_ssd", "local_ssd", "cloud_essd", "cloud_essd2", "cloud_essd3".
  /// [engine] Database type. Valid values: "MySQL", "SQLServer", "PostgreSQL", "MariaDB". If not set, it will match all of engines.
  /// [engineVersion] Database version required by the user. Value options can refer to the latest docs [detail info](https://www.alibabacloud.com/help/doc-detail/26228.htm) `EngineVersion`.
  /// [instanceChargeType] Filter the results by charge type. Valid values: `PrePaid` and `PostPaid`. Default to `PostPaid`.
  /// [multiZone] Whether to show multi available zone. Default false to not show multi availability zone.
  /// [outputFile] File name where to save data source results (after running `pulumi up`).
  /// [zoneId] The Zone to launch the DB instance.
  GetInstanceEnginesArgs({
    pulumi.Output<String>? category,
    pulumi.Output<String>? dbInstanceStorageType,
    pulumi.Output<String>? engine,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<String>? instanceChargeType,
    pulumi.Output<bool>? multiZone,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? zoneId,
  }) :
      category = pulumi.Input.asOptionalInput<String>(category),
      dbInstanceStorageType = pulumi.Input.asOptionalInput<String>(dbInstanceStorageType),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      instanceChargeType = pulumi.Input.asOptionalInput<String>(instanceChargeType),
      multiZone = pulumi.Input.asOptionalInput<bool>(multiZone),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'dbInstanceStorageType': ?dbInstanceStorageType,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'instanceChargeType': ?instanceChargeType,
      'multiZone': ?multiZone,
      'outputFile': ?outputFile,
      'zoneId': ?zoneId,
    };
  }

  factory GetInstanceEnginesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceEnginesArgs(
      category: map['category'] == null ? null : pulumi.Output.create<String>(map['category'] as String),
      dbInstanceStorageType: map['dbInstanceStorageType'] == null ? null : pulumi.Output.create<String>(map['dbInstanceStorageType'] as String),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      instanceChargeType: map['instanceChargeType'] == null ? null : pulumi.Output.create<String>(map['instanceChargeType'] as String),
      multiZone: map['multiZone'] == null ? null : pulumi.Output.create<bool>(map['multiZone'] as bool),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

