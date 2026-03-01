// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_cen_instance_instance_args_doc}
class InstanceArgs {
  /// The name of the CEN instance.
  final pulumi.Input<String>? cenInstanceName;
  /// The description of the CEN instance.
  final pulumi.Input<String>? description;
  /// . Field 'name' has been deprecated from provider version 1.246.0. New field 'cen_instance_name' instead.
  final pulumi.Input<String>? name;
  /// The level of CIDR block overlapping. Valid values:  REDUCED: Overlapped CIDR blocks are allowed. However, the overlapped CIDR blocks cannot be the same.
  final pulumi.Input<String>? protectionLevel;
  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;
  /// The tags of the CEN instance.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [InstanceArgs].
  /// [cenInstanceName] The name of the CEN instance.
  /// [description] The description of the CEN instance.
  /// [name] . Field 'name' has been deprecated from provider version 1.246.0. New field 'cen_instance_name' instead.
  /// [protectionLevel] The level of CIDR block overlapping. Valid values:  REDUCED: Overlapped CIDR blocks are allowed. However, the overlapped CIDR blocks cannot be the same.
  /// [resourceGroupId] The ID of the resource group
  /// [tags] The tags of the CEN instance.
  InstanceArgs({
    pulumi.Output<String>? cenInstanceName,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? protectionLevel,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      cenInstanceName = pulumi.Input.asOptionalInput<String>(cenInstanceName),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      protectionLevel = pulumi.Input.asOptionalInput<String>(protectionLevel),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenInstanceName': ?cenInstanceName,
      'description': ?description,
      'name': ?name,
      'protectionLevel': ?protectionLevel,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      cenInstanceName: map['cenInstanceName'] == null ? null : pulumi.Output.create<String>(map['cenInstanceName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      protectionLevel: map['protectionLevel'] == null ? null : pulumi.Output.create<String>(map['protectionLevel'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

