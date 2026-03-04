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
      'environmentVars':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceEnvironmentVar>,
            List<Map<String, dynamic>>
          >(
            environmentVars,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceEnvironmentVar,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      category: (() {
        final guardedValue = map['category'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      environmentVars: (() {
        final guardedValue = map['environmentVars'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InstanceEnvironmentVar>(
            guardedValue,
            (value) => InstanceEnvironmentVar.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      force: (() {
        final guardedValue = map['force'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      image: (() {
        final guardedValue = map['image'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceName: (() {
        final guardedValue = map['instanceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securityGroupId: pulumi.Input.fromValue(map['securityGroupId'] as String),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
    );
  }
}
