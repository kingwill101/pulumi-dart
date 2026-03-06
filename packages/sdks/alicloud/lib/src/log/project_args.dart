// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_log_project_project_args_doc}
/// The set of arguments for Project.
/// {@endtemplate}
/// {@macro pulumi_log_project_project_args_doc}
class ProjectArgs {
  /// Description.
  final pulumi.Input<String>? description;
  /// . Field 'name' has been deprecated from provider version 1.223.0. New field 'project_name' instead.
  final pulumi.Input<String>? name;
  /// Log project policy, used to set a policy for a project.
  final pulumi.Input<String>? policy;
  /// The name of the log project. It is the only in one Alicloud account. The project name is globally unique in Alibaba Cloud and cannot be modified after it is created. The naming rules are as follows:
  /// - The project name must be globally unique.
  /// - The name can contain only lowercase letters, digits, and hyphens (-).
  /// - It must start and end with a lowercase letter or number.
  /// - The value contains 3 to 63 characters.
  final pulumi.Input<String>? projectName;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// Tag.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProjectArgs].
  /// [description] Description.
  /// [name] . Field 'name' has been deprecated from provider version 1.223.0. New field 'project_name' instead.
  /// [policy] Log project policy, used to set a policy for a project.
  /// [projectName] The name of the log project. It is the only in one Alicloud account. The project name is globally unique in Alibaba Cloud and cannot be modified after it is created. The naming rules are as follows:
  /// [resourceGroupId] The ID of the resource group.
  /// [tags] Tag.
  const ProjectArgs({
    this.description,
    this.name,
    this.policy,
    this.projectName,
    this.resourceGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'policy': ?policy,
      'projectName': ?projectName,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory ProjectArgs.fromMap(Map<String, dynamic> map) {
    return ProjectArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectName: (() { final guardedValue = map['projectName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

