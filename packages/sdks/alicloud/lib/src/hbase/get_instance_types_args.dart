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
    this.chargeType,
    this.diskType,
    this.engine,
    this.instanceType,
    this.outputFile,
    this.regionId,
    this.version,
    this.zoneId,
  });

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
      chargeType: map['chargeType'] == null ? null : (map['chargeType']! as String).input(),
      diskType: map['diskType'] == null ? null : (map['diskType']! as String).input(),
      engine: map['engine'] == null ? null : (map['engine']! as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId']! as String).input(),
    );
  }
}

