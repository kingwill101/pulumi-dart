// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_emr_get_disk_types_get_disk_types_args_doc}
/// Arguments for getDiskTypes.
/// {@endtemplate}
/// {@macro pulumi_emr_get_disk_types_get_disk_types_args_doc}
class GetDiskTypesArgs {
  /// The cluster type of the emr cluster instance. Possible values: `HADOOP`, `KAFKA`, `ZOOKEEPER`, `DRUID`.
  final pulumi.Input<String> clusterType;

  /// The destination resource of emr cluster instance
  final pulumi.Input<String> destinationResource;

  /// Filter the results by charge type. Valid values: `PrePaid` and `PostPaid`. Default to `PostPaid`.
  final pulumi.Input<String> instanceChargeType;

  /// The ecs instance type of create emr cluster instance.
  final pulumi.Input<String> instanceType;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// The Zone to create emr cluster instance.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [GetDiskTypesArgs].
  /// [clusterType] The cluster type of the emr cluster instance. Possible values: `HADOOP`, `KAFKA`, `ZOOKEEPER`, `DRUID`.
  /// [destinationResource] The destination resource of emr cluster instance
  /// [instanceChargeType] Filter the results by charge type. Valid values: `PrePaid` and `PostPaid`. Default to `PostPaid`.
  /// [instanceType] The ecs instance type of create emr cluster instance.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [zoneId] The Zone to create emr cluster instance.
  GetDiskTypesArgs({
    required this.clusterType,
    required this.destinationResource,
    required this.instanceChargeType,
    required this.instanceType,
    this.outputFile,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterType': clusterType,
      'destinationResource': destinationResource,
      'instanceChargeType': instanceChargeType,
      'instanceType': instanceType,
      'outputFile': ?outputFile,
      'zoneId': ?zoneId,
    };
  }

  factory GetDiskTypesArgs.fromMap(Map<String, dynamic> map) {
    return GetDiskTypesArgs(
      clusterType: pulumi.Input.fromValue(map['clusterType'] as String),
      destinationResource: pulumi.Input.fromValue(
        map['destinationResource'] as String,
      ),
      instanceChargeType: pulumi.Input.fromValue(
        map['instanceChargeType'] as String,
      ),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zoneId: (() {
        final guardedValue = map['zoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
