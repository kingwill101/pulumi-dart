// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_machine_types.dart';
import 'resource_user_access_param.dart';

/// Input properties used for looking up and filtering Resource resources.
class ResourceState {
  /// Used to provide a description or comment on the compute cluster.
  final pulumi.Input<String>? clusterDesc;
  /// Used to uniquely identify a computing cluster.
  final pulumi.Input<String>? clusterId;
  /// Represents the name of the compute cluster, usually including the model number.
  final pulumi.Input<String>? clusterName;
  /// Generally refers to the type or instance type of a computing resource. See `machine_types` below.
  final pulumi.Input<ResourceMachineTypes>? machineTypes;
  /// The ID of the Resource.
  final pulumi.Input<String>? resourceId;
  /// Used to define the access parameters for the user. See `user_access_param` below.
  final pulumi.Input<ResourceUserAccessParam>? userAccessParam;

  /// Creates a new [ResourceState].
  /// [clusterDesc] Used to provide a description or comment on the compute cluster.
  /// [clusterId] Used to uniquely identify a computing cluster.
  /// [clusterName] Represents the name of the compute cluster, usually including the model number.
  /// [machineTypes] Generally refers to the type or instance type of a computing resource. See `machine_types` below.
  /// [resourceId] The ID of the Resource.
  /// [userAccessParam] Used to define the access parameters for the user. See `user_access_param` below.
  ResourceState({
    this.clusterDesc,
    this.clusterId,
    this.clusterName,
    this.machineTypes,
    this.resourceId,
    this.userAccessParam,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterDesc': ?clusterDesc,
      'clusterId': ?clusterId,
      'clusterName': ?clusterName,
      'machineTypes': ?pulumi.Input.mapOptionalInputValue<ResourceMachineTypes, Map<String, dynamic>>(machineTypes, (value) => value.toMap()),
      'resourceId': ?resourceId,
      'userAccessParam': ?pulumi.Input.mapOptionalInputValue<ResourceUserAccessParam, Map<String, dynamic>>(userAccessParam, (value) => value.toMap()),
    };
  }

  factory ResourceState.fromMap(Map<String, dynamic> map) {
    return ResourceState(
      clusterDesc: (() { final guardedValue = map['clusterDesc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineTypes: (() { final guardedValue = map['machineTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceMachineTypes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAccessParam: (() { final guardedValue = map['userAccessParam']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceUserAccessParam.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

