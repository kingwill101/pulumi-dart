// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_environment_var.dart';

/// {@template pulumi_eais_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_eais_instance_instance_args_doc}
class InstanceArgs {
  /// EAIS instance category, valid values: `eais`, `jupyter`, `ei`, default is `eais`.
  final pulumi.Input<String>? category;
  /// Setting environment variables in eais instance on Initialization See `environment_var` below.
  final pulumi.Input<List<InstanceEnvironmentVar>>? environmentVars;
  /// Whether to force the deletion when the instance status does not meet the deletion conditions.
  final pulumi.Input<bool>? force;
  /// EAIS instance image.
  final pulumi.Input<String>? image;
  /// Name of the instance
  final pulumi.Input<String>? instanceName;
  /// EAIS instance type
  final pulumi.Input<String> instanceType;
  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;
  /// Security group ID
  final pulumi.Input<String> securityGroupId;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// The tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Switch ID.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [InstanceArgs].
  /// [category] EAIS instance category, valid values: `eais`, `jupyter`, `ei`, default is `eais`.
  /// [environmentVars] Setting environment variables in eais instance on Initialization See `environment_var` below.
  /// [force] Whether to force the deletion when the instance status does not meet the deletion conditions.
  /// [image] EAIS instance image.
  /// [instanceName] Name of the instance
  /// [instanceType] EAIS instance type
  /// [resourceGroupId] The ID of the resource group
  /// [securityGroupId] Security group ID
  /// [status] The status of the resource
  /// [tags] The tags.
  /// [vswitchId] Switch ID.
  InstanceArgs({
    this.category,
    this.environmentVars,
    this.force,
    this.image,
    this.instanceName,
    required this.instanceType,
    this.resourceGroupId,
    required this.securityGroupId,
    this.status,
    this.tags,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'environmentVars': ?pulumi.Input.mapOptionalInputValue<List<InstanceEnvironmentVar>, List<Map<String, dynamic>>>(environmentVars, (value) => pulumi.Input.encodeList<InstanceEnvironmentVar, Map<String, dynamic>>(value, (value) => value.toMap())),
      'force': ?force,
      'image': ?image,
      'instanceName': ?instanceName,
      'instanceType': instanceType,
      'resourceGroupId': ?resourceGroupId,
      'securityGroupId': securityGroupId,
      'status': ?status,
      'tags': ?tags,
      'vswitchId': vswitchId,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      category: map['category'] == null ? null : (map['category']! as String).input(),
      environmentVars: map['environmentVars'] == null ? null : (pulumi.Input.decodeList<InstanceEnvironmentVar>(map['environmentVars']!, (value) => InstanceEnvironmentVar.fromMap((value as Map).cast<String, dynamic>()))).input(),
      force: map['force'] == null ? null : (map['force']! as bool).input(),
      image: map['image'] == null ? null : (map['image']! as String).input(),
      instanceName: map['instanceName'] == null ? null : (map['instanceName']! as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      securityGroupId: (map['securityGroupId'] as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      vswitchId: (map['vswitchId'] as String).input(),
    );
  }
}

