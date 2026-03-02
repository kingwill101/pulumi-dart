// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Project resources.
class ProjectState {
  /// CreateTime.
  final pulumi.Input<String>? createTime;
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
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// Tag.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProjectState].
  /// [createTime] CreateTime.
  /// [description] Description.
  /// [name] . Field 'name' has been deprecated from provider version 1.223.0. New field 'project_name' instead.
  /// [policy] Log project policy, used to set a policy for a project.
  /// [projectName] The name of the log project. It is the only in one Alicloud account. The project name is globally unique in Alibaba Cloud and cannot be modified after it is created. The naming rules are as follows:
  /// [resourceGroupId] The ID of the resource group.
  /// [status] The status of the resource.
  /// [tags] Tag.
  ProjectState({
    this.createTime,
    this.description,
    this.name,
    this.policy,
    this.projectName,
    this.resourceGroupId,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'name': ?name,
      'policy': ?policy,
      'projectName': ?projectName,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory ProjectState.fromMap(Map<String, dynamic> map) {
    return ProjectState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      policy: map['policy'] == null ? null : (map['policy']! as String).input(),
      projectName: map['projectName'] == null ? null : (map['projectName']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

