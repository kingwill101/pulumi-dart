// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_emr_get_instance_types_get_instance_types_args_doc}
/// Arguments for getInstanceTypes.
/// {@endtemplate}
/// {@macro pulumi_emr_get_instance_types_get_instance_types_args_doc}
class GetInstanceTypesArgs {
  /// The cluster type of the emr cluster instance. Possible values: `HADOOP`, `KAFKA`, `ZOOKEEPER`, `DRUID`.
  final pulumi.Input<String> clusterType;
  /// The destination resource of emr cluster instance
  final pulumi.Input<String> destinationResource;
  /// Filter the results by charge type. Valid values: `PrePaid` and `PostPaid`. Default to `PostPaid`.
  final pulumi.Input<String> instanceChargeType;
  /// Filter the specific ecs instance type to create emr cluster.
  final pulumi.Input<String>? instanceType;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Whether the current storage disk is local or not.
  final pulumi.Input<bool>? supportLocalStorage;
  /// The specific supported node type list.
  /// Possible values may be any one or combination of these: ["MASTER", "CORE", "TASK", "GATEWAY"]
  final pulumi.Input<List<String>>? supportNodeTypes;
  /// The supported resources of specific zoneId.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [GetInstanceTypesArgs].
  /// [clusterType] The cluster type of the emr cluster instance. Possible values: `HADOOP`, `KAFKA`, `ZOOKEEPER`, `DRUID`.
  /// [destinationResource] The destination resource of emr cluster instance
  /// [instanceChargeType] Filter the results by charge type. Valid values: `PrePaid` and `PostPaid`. Default to `PostPaid`.
  /// [instanceType] Filter the specific ecs instance type to create emr cluster.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [supportLocalStorage] Whether the current storage disk is local or not.
  /// [supportNodeTypes] The specific supported node type list.
  /// [zoneId] The supported resources of specific zoneId.
  GetInstanceTypesArgs({
    required this.clusterType,
    required this.destinationResource,
    required this.instanceChargeType,
    this.instanceType,
    this.outputFile,
    this.supportLocalStorage,
    this.supportNodeTypes,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterType': clusterType,
      'destinationResource': destinationResource,
      'instanceChargeType': instanceChargeType,
      'instanceType': ?instanceType,
      'outputFile': ?outputFile,
      'supportLocalStorage': ?supportLocalStorage,
      'supportNodeTypes': ?supportNodeTypes,
      'zoneId': ?zoneId,
    };
  }

  factory GetInstanceTypesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesArgs(
      clusterType: (map['clusterType'] as String).input(),
      destinationResource: (map['destinationResource'] as String).input(),
      instanceChargeType: (map['instanceChargeType'] as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      supportLocalStorage: map['supportLocalStorage'] == null ? null : (map['supportLocalStorage']! as bool).input(),
      supportNodeTypes: map['supportNodeTypes'] == null ? null : ((map['supportNodeTypes']! as List).cast<String>()).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId']! as String).input(),
    );
  }
}

