// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for WorkloadIdentityPoolNamespace.
class WorkloadIdentityPoolNamespaceArgs {
  /// A description of the namespace. Cannot exceed 256 characters.
  final pulumi.Input<String>? description;

  /// Whether the namespace is disabled. If disabled, credentials may no longer be issued for
  /// identities within this namespace, however existing credentials will still be accepted until
  /// they expire.
  final pulumi.Input<bool>? disabled;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The ID to use for the pool, which becomes the final component of the resource name. This
  /// value should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix
  /// `gcp-` is reserved for use by Google, and may not be specified.
  final pulumi.Input<String> workloadIdentityPoolId;

  /// The ID to use for the namespace. This value must:
  /// * contain at most 63 characters
  /// * contain only lowercase alphanumeric characters or `-`
  /// * start with an alphanumeric character
  /// * end with an alphanumeric character
  ///
  /// The prefix `gcp-` will be reserved for future uses.
  final pulumi.Input<String> workloadIdentityPoolNamespaceId;

  WorkloadIdentityPoolNamespaceArgs({
    this.description,
    this.disabled,
    this.project,
    required this.workloadIdentityPoolId,
    required this.workloadIdentityPoolNamespaceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['workloadIdentityPoolId'] = workloadIdentityPoolId;
    map['workloadIdentityPoolNamespaceId'] = workloadIdentityPoolNamespaceId;
    return map;
  }

  factory WorkloadIdentityPoolNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityPoolNamespaceArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      disabled: pulumi.Input.asOptionalInput<bool>(map['disabled']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      workloadIdentityPoolId:
          pulumi.Input.asInput<String>(map['workloadIdentityPoolId']),
      workloadIdentityPoolNamespaceId:
          pulumi.Input.asInput<String>(map['workloadIdentityPoolNamespaceId']),
    );
  }
}
