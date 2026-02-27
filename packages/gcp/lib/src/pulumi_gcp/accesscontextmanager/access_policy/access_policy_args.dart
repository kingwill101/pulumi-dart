// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AccessPolicy.
class AccessPolicyArgs {
  /// The parent of this AccessPolicy in the Cloud Resource Hierarchy.
  /// Format: 'organizations/{{organization_id}}'
  final pulumi.Input<String> parent;

  /// Folder or project on which this policy is applicable.
  /// Format: 'folders/{{folder_id}}' or 'projects/{{project_number}}'
  final pulumi.Input<String>? scopes;

  /// Human readable title. Does not affect behavior.
  final pulumi.Input<String> title;

  AccessPolicyArgs({
    required this.parent,
    this.scopes,
    required this.title,
  });

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
      parent: pulumi.Input.asInput<String>(map['parent']),
      scopes: pulumi.Input.asOptionalInput<String>(map['scopes']),
      title: pulumi.Input.asInput<String>(map['title']),
    );
  }
}
