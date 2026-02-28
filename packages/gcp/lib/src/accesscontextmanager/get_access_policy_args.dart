// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_accesscontextmanager_get_access_policy_get_access_policy_args_doc}
/// Arguments for getAccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_get_access_policy_get_access_policy_args_doc}
class GetAccessPolicyArgs {
  /// The parent of this AccessPolicy in the Cloud Resource Hierarchy. Format: `organizations/{{organization_id}}`
  final pulumi.Input<String> parent;

  /// Folder or project on which this policy is applicable. Format: `folders/{{folder_id}}` or `projects/{{project_number}}`
  final pulumi.Input<List<String>>? scopes;

  /// Creates a new [GetAccessPolicyArgs].
  /// [parent] The parent of this AccessPolicy in the Cloud Resource Hierarchy. Format: `organizations/{{organization_id}}`
  /// [scopes] Folder or project on which this policy is applicable. Format: `folders/{{folder_id}}` or `projects/{{project_number}}`
  GetAccessPolicyArgs({
    required String parent,
    List<String>? scopes,
  })  : parent = pulumi.Input.asInput<String>(parent),
        scopes = pulumi.Input.asOptionalInput<List<String>>(scopes);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parent'] = parent;
    final scopesValue = scopes;
    if (scopesValue != null) {
      map['scopes'] = scopesValue;
    }
    return map;
  }

  factory GetAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessPolicyArgs(
      parent: map['parent'] as String,
      scopes:
          map['scopes'] == null ? null : (map['scopes'] as List).cast<String>(),
    );
  }
}
