// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Project.
class ProjectCloudresourcemanagerV3Args {
  /// Optional. A user-assigned display name of the project. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. Example: `My Project`
  final pulumi.Input<String>? displayName;

  /// Optional. The labels associated with this project. Label keys must be between 1 and 63 characters long and must conform to the following regular expression: \[a-z\](\[-a-z0-9\]*\[a-z0-9\])?. Label values must be between 0 and 63 characters long and must conform to the regular expression (\[a-z\](\[-a-z0-9\]*\[a-z0-9\])?)?. No more than 64 labels can be associated with a given resource. Clients should store labels in a representation such as JSON that does not depend on specific characters being disallowed. Example: `"myBusinessDimension" : "businessValue"`
  final pulumi.Input<Map<String, String>>? labels;

  /// Optional. A reference to a parent Resource. eg., `organizations/123` or `folders/876`.
  final pulumi.Input<String>? parent;

  /// Immutable. The unique, user-assigned id of the project. It must be 6 to 30 lowercase ASCII letters, digits, or hyphens. It must start with a letter. Trailing hyphens are prohibited. Example: `tokyo-rain-123`
  final pulumi.Input<String>? projectId;

  ProjectCloudresourcemanagerV3Args({
    this.displayName,
    this.labels,
    this.parent,
    this.projectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    final projectIdValue = projectId;
    if (projectIdValue != null) {
      map['projectId'] = projectIdValue;
    }
    return map;
  }

  factory ProjectCloudresourcemanagerV3Args.fromMap(Map<String, dynamic> map) {
    return ProjectCloudresourcemanagerV3Args(
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      parent: pulumi.Input.asOptionalInput<String>(map['parent']),
      projectId: pulumi.Input.asOptionalInput<String>(map['projectId']),
    );
  }
}
