// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../policy_tag_iam_binding_condition/policy_tag_iam_binding_condition.dart';

/// The set of arguments for PolicyTagIamBinding.
class PolicyTagIamBindingArgs {
  final Input<PolicyTagIamBindingCondition>? condition;

  /// Identities that will be granted the privilege in <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span>.
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
  final Input<List<String>> members;

  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> policyTag;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.datacatalog.PolicyTagIamBinding`" pulumi-lang-dotnet="`gcp.datacatalog.PolicyTagIamBinding`" pulumi-lang-go="`datacatalog.PolicyTagIamBinding`" pulumi-lang-python="`datacatalog.PolicyTagIamBinding`" pulumi-lang-yaml="`gcp.datacatalog.PolicyTagIamBinding`" pulumi-lang-java="`gcp.datacatalog.PolicyTagIamBinding`">`gcp.datacatalog.PolicyTagIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final Input<String> role;

  PolicyTagIamBindingArgs({
    this.condition,
    required this.members,
    required this.policyTag,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = Input.mapOptionalInputValue<
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
      condition:
          Input.asOptionalInput<PolicyTagIamBindingCondition>(map['condition']),
      members: Input.asInput<List<String>>(map['members']),
      policyTag: Input.asInput<String>(map['policyTag']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
