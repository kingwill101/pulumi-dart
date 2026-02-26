// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'project_lifecycle_state.dart';
import 'resource_id.dart';

/// The set of arguments for Project.
class ProjectArgs {
  /// Creation time. Read-only.
  final Input<String>? createTime;

  /// The labels associated with this Project. Label keys must be between 1 and 63 characters long and must conform to the following regular expression: a-z{0,62}. Label values must be between 0 and 63 characters long and must conform to the regular expression [a-z0-9_-]{0,63}. A label value can be empty. No more than 256 labels can be associated with a given resource. Clients should store labels in a representation such as JSON that does not depend on specific characters being disallowed. Example: "environment" : "dev" Read-write.
  final Input<Map<String, String>>? labels;

  /// The Project lifecycle state. Read-only.
  final Input<ProjectLifecycleState>? lifecycleState;

  /// The optional user-assigned display name of the Project. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. Example: `My Project` Read-write.
  final Input<String>? name;

  /// An optional reference to a parent Resource. Supported parent types include "organization" and "folder". Once set, the parent cannot be cleared. The `parent` can be set on creation or using the `UpdateProject` method; the end user must have the `resourcemanager.projects.create` permission on the parent.
  final Input<ResourceId>? parent;

  /// The unique, user-assigned ID of the Project. It must be 6 to 30 lowercase letters, digits, or hyphens. It must start with a letter. Trailing hyphens are prohibited. Example: `tokyo-rain-123` Read-only after creation.
  final Input<String>? projectId;

  /// The number uniquely identifying the project. Example: `415104041262` Read-only.
  final Input<String>? projectNumber;

  ProjectArgs({
    this.createTime,
    this.labels,
    this.lifecycleState,
    this.name,
    this.parent,
    this.projectId,
    this.projectNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final lifecycleStateValue = lifecycleState;
    if (lifecycleStateValue != null) {
      map['lifecycleState'] =
          Input.mapOptionalInputValue<ProjectLifecycleState, String>(
              lifecycleStateValue, (value) => value.value);
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] =
          Input.mapOptionalInputValue<ResourceId, Map<String, dynamic>>(
              parentValue, (value) => value.toMap());
    }
    final projectIdValue = projectId;
    if (projectIdValue != null) {
      map['projectId'] = projectIdValue;
    }
    final projectNumberValue = projectNumber;
    if (projectNumberValue != null) {
      map['projectNumber'] = projectNumberValue;
    }
    return map;
  }

  factory ProjectArgs.fromMap(Map<String, dynamic> map) {
    return ProjectArgs(
      createTime: Input.asOptionalInput<String>(map['createTime']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      lifecycleState:
          Input.asOptionalInput<ProjectLifecycleState>(map['lifecycleState']),
      name: Input.asOptionalInput<String>(map['name']),
      parent: Input.asOptionalInput<ResourceId>(map['parent']),
      projectId: Input.asOptionalInput<String>(map['projectId']),
      projectNumber: Input.asOptionalInput<String>(map['projectNumber']),
    );
  }
}
