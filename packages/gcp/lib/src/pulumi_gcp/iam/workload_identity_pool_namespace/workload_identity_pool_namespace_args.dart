// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for WorkloadIdentityPoolNamespace.
class WorkloadIdentityPoolNamespaceArgs {
  /// A description of the namespace. Cannot exceed 256 characters.
  final Input<String>? description;

  /// Whether the namespace is disabled. If disabled, credentials may no longer be issued for
  /// identities within this namespace, however existing credentials will still be accepted until
  /// they expire.
  final Input<bool>? disabled;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The ID to use for the pool, which becomes the final component of the resource name. This
  /// value should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix
  /// `gcp-` is reserved for use by Google, and may not be specified.
  final Input<String> workloadIdentityPoolId;

  /// The ID to use for the namespace. This value must:
  /// * contain at most 63 characters
  /// * contain only lowercase alphanumeric characters or `-`
  /// * start with an alphanumeric character
  /// * end with an alphanumeric character
  ///
  /// The prefix `gcp-` will be reserved for future uses.
  final Input<String> workloadIdentityPoolNamespaceId;

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
      description: Input.asOptionalInput<String>(map['description']),
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      project: Input.asOptionalInput<String>(map['project']),
      workloadIdentityPoolId:
          Input.asInput<String>(map['workloadIdentityPoolId']),
      workloadIdentityPoolNamespaceId:
          Input.asInput<String>(map['workloadIdentityPoolNamespaceId']),
    );
  }
}
