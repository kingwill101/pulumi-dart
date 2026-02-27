// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_lifecycle_state_cloudresourcemanager_v1beta1.dart';
import 'resource_id_cloudresourcemanager_v1beta1.dart';

/// The set of arguments for Project.
class ProjectCloudresourcemanagerV1beta1Args {
  /// Creation time. Read-only.
  final pulumi.Input<String>? createTime;

  /// The labels associated with this Project. Label keys must be between 1 and 63 characters long and must conform to the following regular expression: a-z{0,62}. Label values must be between 0 and 63 characters long and must conform to the regular expression [a-z0-9_-]{0,63}. A label value can be empty. No more than 256 labels can be associated with a given resource. Clients should store labels in a representation such as JSON that does not depend on specific characters being disallowed. Example: `"environment" : "dev"` Read-write.
  final pulumi.Input<Map<String, String>>? labels;

  /// The Project lifecycle state. Read-only.
  final pulumi.Input<ProjectLifecycleStateCloudresourcemanagerV1beta1>?
      lifecycleState;

  /// The optional user-assigned display name of the Project. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. Example: `My Project` Read-write.
  final pulumi.Input<String>? name;

  /// An optional reference to a parent Resource. Supported parent types include "organization" and "folder". Once set, the parent cannot be cleared. The `parent` can be set on creation or using the `UpdateProject` method; the end user must have the `resourcemanager.projects.create` permission on the parent. Read-write.
  final pulumi.Input<ResourceIdCloudresourcemanagerV1beta1>? parent;

  /// The unique, user-assigned ID of the Project. It must be 6 to 30 lowercase letters, digits, or hyphens. It must start with a letter. Trailing hyphens are prohibited. Example: `tokyo-rain-123` Read-only after creation.
  final pulumi.Input<String>? projectId;

  /// The number uniquely identifying the project. Example: `415104041262` Read-only.
  final pulumi.Input<String>? projectNumber;

  /// A now unused experiment opt-out option.
  final pulumi.Input<bool>? useLegacyStack;

  ProjectCloudresourcemanagerV1beta1Args({
    this.createTime,
    this.labels,
    this.lifecycleState,
    this.name,
    this.parent,
    this.projectId,
    this.projectNumber,
    this.useLegacyStack,
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
      map['lifecycleState'] = pulumi.Input.mapOptionalInputValue<
          ProjectLifecycleStateCloudresourcemanagerV1beta1,
          String>(lifecycleStateValue, (value) => value.value);
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = pulumi.Input.mapOptionalInputValue<
          ResourceIdCloudresourcemanagerV1beta1,
          Map<String, dynamic>>(parentValue, (value) => value.toMap());
    }
    final projectIdValue = projectId;
    if (projectIdValue != null) {
      map['projectId'] = projectIdValue;
    }
    final projectNumberValue = projectNumber;
    if (projectNumberValue != null) {
      map['projectNumber'] = projectNumberValue;
    }
    final useLegacyStackValue = useLegacyStack;
    if (useLegacyStackValue != null) {
      map['useLegacyStack'] = useLegacyStackValue;
    }
    return map;
  }

  factory ProjectCloudresourcemanagerV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return ProjectCloudresourcemanagerV1beta1Args(
      createTime: pulumi.Input.asOptionalInput<String>(map['createTime']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      lifecycleState: pulumi.Input.asOptionalInput<
              ProjectLifecycleStateCloudresourcemanagerV1beta1>(
          map['lifecycleState']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      parent:
          pulumi.Input.asOptionalInput<ResourceIdCloudresourcemanagerV1beta1>(
              map['parent']),
      projectId: pulumi.Input.asOptionalInput<String>(map['projectId']),
      projectNumber: pulumi.Input.asOptionalInput<String>(map['projectNumber']),
      useLegacyStack: pulumi.Input.asOptionalInput<bool>(map['useLegacyStack']),
    );
  }
}
