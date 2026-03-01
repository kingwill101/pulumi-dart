// ignore_for_file: unused_element, unnecessary_cast

import 'get_iampolicy_binding_condition.dart';

class GetIAMPolicyBinding {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding. Structure is documented below.
  final GetIAMPolicyBindingCondition? condition;

  /// An array of identities that will be granted the privilege in the `role`. For more details on format and restrictions see https://cloud.google.com/billing/reference/rest/v1/Policy#Binding
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account. Some resources **don't** support this identity.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account. Some resources **don't** support this identity.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final List<String> members;

  /// The role/permission that will be granted to the members.
  /// See the [IAM Roles](https://cloud.google.com/compute/docs/access/iam) documentation for a complete list of roles.
  /// Note that custom roles must be of the format `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final String role;

  /// Creates a new [GetIAMPolicyBinding].
  /// [condition] An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding. Structure is documented below.
  /// [members] An array of identities that will be granted the privilege in the `role`. For more details on format and restrictions see https://cloud.google.com/billing/reference/rest/v1/Policy#Binding
  /// [role] The role/permission that will be granted to the members.
  GetIAMPolicyBinding({
    this.condition,
    required this.members,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition == null ? null : condition!.toMap(),
      'members': members,
      'role': role,
    };
  }

  factory GetIAMPolicyBinding.fromMap(Map<String, dynamic> map) {
    return GetIAMPolicyBinding(
      condition: map['condition'] == null
          ? null
          : GetIAMPolicyBindingCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>(),
            ),
      members: (map['members'] as List).cast<String>(),
      role: map['role'] as String,
    );
  }
}
