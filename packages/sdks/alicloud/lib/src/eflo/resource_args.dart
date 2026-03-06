// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_machine_types.dart';
import 'resource_user_access_param.dart';

/// {@template pulumi_eflo_resource_resource_args_doc}
/// The set of arguments for Resource.
/// {@endtemplate}
/// {@macro pulumi_eflo_resource_resource_args_doc}
class ResourceArgs {
  /// Used to provide a description or comment on the compute cluster.
  final pulumi.Input<String>? clusterDesc;
  /// Used to uniquely identify a computing cluster.
  final pulumi.Input<String> clusterId;
  /// Represents the name of the compute cluster, usually including the model number.
  final pulumi.Input<String> clusterName;
  /// Generally refers to the type or instance type of a computing resource. See `machine_types` below.
  final pulumi.Input<ResourceMachineTypes> machineTypes;
  /// Used to define the access parameters for the user. See `user_access_param` below.
  final pulumi.Input<ResourceUserAccessParam> userAccessParam;

  /// Creates a new [ResourceArgs].
  /// [clusterDesc] Used to provide a description or comment on the compute cluster.
  /// [clusterId] Used to uniquely identify a computing cluster.
  /// [clusterName] Represents the name of the compute cluster, usually including the model number.
  /// [machineTypes] Generally refers to the type or instance type of a computing resource. See `machine_types` below.
  /// [userAccessParam] Used to define the access parameters for the user. See `user_access_param` below.
  const ResourceArgs({
    this.clusterDesc,
    required this.clusterId,
    required this.clusterName,
    required this.machineTypes,
    required this.userAccessParam,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterDesc': ?clusterDesc,
      'clusterId': clusterId,
      'clusterName': clusterName,
      'machineTypes': pulumi.Input.mapInputValue<ResourceMachineTypes, Map<String, dynamic>>(machineTypes, (value) => value.toMap()),
      'userAccessParam': pulumi.Input.mapInputValue<ResourceUserAccessParam, Map<String, dynamic>>(userAccessParam, (value) => value.toMap()),
    };
  }

  factory ResourceArgs.fromMap(Map<String, dynamic> map) {
    return ResourceArgs(
      clusterDesc: (() { final guardedValue = map['clusterDesc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      machineTypes: pulumi.Input.fromValue(ResourceMachineTypes.fromMap((map['machineTypes']! as Map).cast<String, dynamic>())),
      userAccessParam: pulumi.Input.fromValue(ResourceUserAccessParam.fromMap((map['userAccessParam']! as Map).cast<String, dynamic>())),
    );
  }
}

