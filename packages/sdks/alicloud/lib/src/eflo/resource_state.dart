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
      clusterDesc: map['clusterDesc'] == null ? null : (map['clusterDesc']! as String).input(),
      clusterId: map['clusterId'] == null ? null : (map['clusterId']! as String).input(),
      clusterName: map['clusterName'] == null ? null : (map['clusterName']! as String).input(),
      machineTypes: map['machineTypes'] == null ? null : (ResourceMachineTypes.fromMap((map['machineTypes']! as Map).cast<String, dynamic>())).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
      userAccessParam: map['userAccessParam'] == null ? null : (ResourceUserAccessParam.fromMap((map['userAccessParam']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

