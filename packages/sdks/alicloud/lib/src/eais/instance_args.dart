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
    pulumi.Output<String>? category,
    pulumi.Output<List<InstanceEnvironmentVar>>? environmentVars,
    pulumi.Output<bool>? force,
    pulumi.Output<String>? image,
    pulumi.Output<String>? instanceName,
    required pulumi.Output<String> instanceType,
    pulumi.Output<String>? resourceGroupId,
    required pulumi.Output<String> securityGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> vswitchId,
  }) :
      category = pulumi.Input.asOptionalInput<String>(category),
      environmentVars = pulumi.Input.asOptionalInput<List<InstanceEnvironmentVar>>(environmentVars),
      force = pulumi.Input.asOptionalInput<bool>(force),
      image = pulumi.Input.asOptionalInput<String>(image),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      instanceType = pulumi.Input.asInput<String>(instanceType),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      securityGroupId = pulumi.Input.asInput<String>(securityGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vswitchId = pulumi.Input.asInput<String>(vswitchId);

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
      category: map['category'] == null ? null : pulumi.Output.create<String>(map['category'] as String),
      environmentVars: map['environmentVars'] == null ? null : pulumi.Output.create<List<InstanceEnvironmentVar>>(pulumi.Input.decodeList<InstanceEnvironmentVar>(map['environmentVars'], (value) => InstanceEnvironmentVar.fromMap((value as Map).cast<String, dynamic>()))),
      force: map['force'] == null ? null : pulumi.Output.create<bool>(map['force'] as bool),
      image: map['image'] == null ? null : pulumi.Output.create<String>(map['image'] as String),
      instanceName: map['instanceName'] == null ? null : pulumi.Output.create<String>(map['instanceName'] as String),
      instanceType: pulumi.Output.create<String>(map['instanceType'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      securityGroupId: pulumi.Output.create<String>(map['securityGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vswitchId: pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

