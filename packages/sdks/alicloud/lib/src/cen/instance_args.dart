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
    this.cenInstanceName,
    this.description,
    this.name,
    this.protectionLevel,
    this.resourceGroupId,
    this.tags,
  });

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
      cenInstanceName: (() { final guardedValue = map['cenInstanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectionLevel: (() { final guardedValue = map['protectionLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

