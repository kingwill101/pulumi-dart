// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_accesscontextmanager_access_policy_access_policy_args_doc}
/// The set of arguments for AccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_access_policy_access_policy_args_doc}
class AccessPolicyArgs {
  /// The parent of this AccessPolicy in the Cloud Resource Hierarchy.
  /// Format: 'organizations/{{organization_id}}'
  final pulumi.Input<String> parent;

  /// Folder or project on which this policy is applicable.
  /// Format: 'folders/{{folder_id}}' or 'projects/{{project_number}}'
  final pulumi.Input<String>? scopes;

  /// Human readable title. Does not affect behavior.
  final pulumi.Input<String> title;

  /// Creates a new [AccessPolicyArgs].
  /// [parent] The parent of this AccessPolicy in the Cloud Resource Hierarchy.
  /// [scopes] Folder or project on which this policy is applicable.
  /// [title] Human readable title. Does not affect behavior.
  AccessPolicyArgs({
    required String parent,
    String? scopes,
    required String title,
  })  : parent = pulumi.Input.asInput<String>(parent),
        scopes = pulumi.Input.asOptionalInput<String>(scopes),
        title = pulumi.Input.asInput<String>(title);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parent'] = parent;
    final scopesValue = scopes;
    if (scopesValue != null) {
      map['scopes'] = scopesValue;
    }
    map['title'] = title;
    return map;
  }

  factory AccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AccessPolicyArgs(
      parent: map['parent'] as String,
      scopes: map['scopes'] == null ? null : map['scopes'] as String,
      title: map['title'] as String,
    );
  }
}
