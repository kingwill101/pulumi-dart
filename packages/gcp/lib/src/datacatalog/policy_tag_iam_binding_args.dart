// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_tag_iam_binding_condition.dart';

/// {@template pulumi_datacatalog_policy_tag_iam_binding_policy_tag_iam_binding_args_doc}
/// The set of arguments for PolicyTagIamBinding.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_policy_tag_iam_binding_policy_tag_iam_binding_args_doc}
class PolicyTagIamBindingArgs {
  final pulumi.Input<PolicyTagIamBindingCondition>? condition;

  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  /// * **projectOwner:projectid**: Owners of the given project. For example, "projectOwner:my-example-project"
  /// * **projectEditor:projectid**: Editors of the given project. For example, "projectEditor:my-example-project"
  /// * **projectViewer:projectid**: Viewers of the given project. For example, "projectViewer:my-example-project"
  /// * **Federated identities**: One or more federated identities in a workload or workforce identity pool, workload running on GKE, etc. Refer to the [Principal identifiers documentation](https://cloud.google.com/iam/docs/principal-identifiers#allow) for examples of targets and valid configuration. For example, "principal://iam.googleapis.com/locations/global/workforcePools/example-contractors/subject/joe@example.com"
  final pulumi.Input<List<String>> members;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> policyTag;

  /// The role that should be applied. Only one
  /// `gcp.datacatalog.PolicyTagIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// Creates a new [PolicyTagIamBindingArgs].
  /// [condition] Optional.
  /// [members] Identities that will be granted the privilege in `role`.
  /// [policyTag] Used to find the parent resource to bind the IAM policy to
  /// [role] The role that should be applied. Only one
  PolicyTagIamBindingArgs({
    PolicyTagIamBindingCondition? condition,
    required List<String> members,
    required String policyTag,
    required String role,
  })  : condition = pulumi.Input.asOptionalInput<PolicyTagIamBindingCondition>(
            condition),
        members = pulumi.Input.asInput<List<String>>(members),
        policyTag = pulumi.Input.asInput<String>(policyTag),
        role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          PolicyTagIamBindingCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['members'] = members;
    map['policyTag'] = policyTag;
    map['role'] = role;
    return map;
  }

  factory PolicyTagIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return PolicyTagIamBindingArgs(
      condition: map['condition'] == null
          ? null
          : PolicyTagIamBindingCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>()),
      members: (map['members'] as List).cast<String>(),
      policyTag: map['policyTag'] as String,
      role: map['role'] as String,
    );
  }
}
