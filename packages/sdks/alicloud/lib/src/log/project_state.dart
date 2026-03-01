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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? policy,
    pulumi.Output<String>? projectName,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      projectName = pulumi.Input.asOptionalInput<String>(projectName),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      projectName: map['projectName'] == null ? null : pulumi.Output.create<String>(map['projectName'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

