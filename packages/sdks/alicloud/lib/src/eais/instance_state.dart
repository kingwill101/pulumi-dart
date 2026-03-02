// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_environment_var.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// EAIS instance category, valid values: `eais`, `jupyter`, `ei`, default is `eais`.
  final pulumi.Input<String>? category;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// Setting environment variables in eais instance on Initialization See `environment_var` below.
  final pulumi.Input<List<InstanceEnvironmentVar>>? environmentVars;
  /// Whether to force the deletion when the instance status does not meet the deletion conditions.
  final pulumi.Input<bool>? force;
  /// EAIS instance image.
  final pulumi.Input<String>? image;
  /// Name of the instance
  final pulumi.Input<String>? instanceName;
  /// EAIS instance type
  final pulumi.Input<String>? instanceType;
  /// Region ID
  final pulumi.Input<String>? regionId;
  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;
  /// Security group ID
  final pulumi.Input<String>? securityGroupId;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// The tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Switch ID.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [InstanceState].
  /// [category] EAIS instance category, valid values: `eais`, `jupyter`, `ei`, default is `eais`.
  /// [createTime] The creation time of the resource
  /// [environmentVars] Setting environment variables in eais instance on Initialization See `environment_var` below.
  /// [force] Whether to force the deletion when the instance status does not meet the deletion conditions.
  /// [image] EAIS instance image.
  /// [instanceName] Name of the instance
  /// [instanceType] EAIS instance type
  /// [regionId] Region ID
  /// [resourceGroupId] The ID of the resource group
  /// [securityGroupId] Security group ID
  /// [status] The status of the resource
  /// [tags] The tags.
  /// [vswitchId] Switch ID.
  InstanceState({
    this.category,
    this.createTime,
    this.environmentVars,
    this.force,
    this.image,
    this.instanceName,
    this.instanceType,
    this.regionId,
    this.resourceGroupId,
    this.securityGroupId,
    this.status,
    this.tags,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'createTime': ?createTime,
      'environmentVars': ?pulumi.Input.mapOptionalInputValue<List<InstanceEnvironmentVar>, List<Map<String, dynamic>>>(environmentVars, (value) => pulumi.Input.encodeList<InstanceEnvironmentVar, Map<String, dynamic>>(value, (value) => value.toMap())),
      'force': ?force,
      'image': ?image,
      'instanceName': ?instanceName,
      'instanceType': ?instanceType,
      'regionId': ?regionId,
      'resourceGroupId': ?resourceGroupId,
      'securityGroupId': ?securityGroupId,
      'status': ?status,
      'tags': ?tags,
      'vswitchId': ?vswitchId,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      category: map['category'] == null ? null : (map['category'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      environmentVars: map['environmentVars'] == null ? null : (pulumi.Input.decodeList<InstanceEnvironmentVar>(map['environmentVars'], (value) => InstanceEnvironmentVar.fromMap((value as Map).cast<String, dynamic>()))).input(),
      force: map['force'] == null ? null : (map['force'] as bool).input(),
      image: map['image'] == null ? null : (map['image'] as String).input(),
      instanceName: map['instanceName'] == null ? null : (map['instanceName'] as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType'] as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      securityGroupId: map['securityGroupId'] == null ? null : (map['securityGroupId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
    );
  }
}

