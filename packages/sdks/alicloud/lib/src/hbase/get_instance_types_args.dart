// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hbase_get_instance_types_get_instance_types_args_doc}
/// Arguments for getInstanceTypes.
/// {@endtemplate}
/// {@macro pulumi_hbase_get_instance_types_get_instance_types_args_doc}
class GetInstanceTypesArgs {
  /// The charge type of create hbase cluster instance, `PrePaid` or `PostPaid`.
  final pulumi.Input<String>? chargeType;
  /// The disk type, `cloud_ssd`, `cloud_essd_pl1`, `cloud_efficiency`, `local_hdd_pro`, `local_ssd_pro`.
  final pulumi.Input<String>? diskType;
  /// The engine name, `singlehbase`, `hbase`, `hbaseue`, `bds`.
  final pulumi.Input<String>? engine;
  /// The hbase instance type of create hbase cluster instance.
  final pulumi.Input<String>? instanceType;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The dest region id, default client region.
  final pulumi.Input<String>? regionId;
  /// The engine version, singlehbase/hbase=1.1/2.0, bds=1.0.
  final pulumi.Input<String>? version;
  /// The zone id, belong to regionId.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [GetInstanceTypesArgs].
  /// [chargeType] The charge type of create hbase cluster instance, `PrePaid` or `PostPaid`.
  /// [diskType] The disk type, `cloud_ssd`, `cloud_essd_pl1`, `cloud_efficiency`, `local_hdd_pro`, `local_ssd_pro`.
  /// [engine] The engine name, `singlehbase`, `hbase`, `hbaseue`, `bds`.
  /// [instanceType] The hbase instance type of create hbase cluster instance.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [regionId] The dest region id, default client region.
  /// [version] The engine version, singlehbase/hbase=1.1/2.0, bds=1.0.
  /// [zoneId] The zone id, belong to regionId.
  GetInstanceTypesArgs({
    pulumi.Output<String>? chargeType,
    pulumi.Output<String>? diskType,
    pulumi.Output<String>? engine,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? version,
    pulumi.Output<String>? zoneId,
  }) :
      chargeType = pulumi.Input.asOptionalInput<String>(chargeType),
      diskType = pulumi.Input.asOptionalInput<String>(diskType),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      version = pulumi.Input.asOptionalInput<String>(version),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chargeType': ?chargeType,
      'diskType': ?diskType,
      'engine': ?engine,
      'instanceType': ?instanceType,
      'outputFile': ?outputFile,
      'regionId': ?regionId,
      'version': ?version,
      'zoneId': ?zoneId,
    };
  }

  factory GetInstanceTypesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesArgs(
      chargeType: map['chargeType'] == null ? null : pulumi.Output.create<String>(map['chargeType'] as String),
      diskType: map['diskType'] == null ? null : pulumi.Output.create<String>(map['diskType'] as String),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

