// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../consent_store_iam_member_condition/consent_store_iam_member_condition.dart';

/// The set of arguments for ConsentStoreIamMember.
class ConsentStoreIamMemberArgs {
  final Input<ConsentStoreIamMemberCondition>? condition;

  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> consentStoreId;

  /// Identifies the dataset addressed by this request. Must be in the format
  /// 'projects/{project}/locations/{location}/datasets/{dataset}'
  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> dataset;

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
  final Input<String> member;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.healthcare.ConsentStoreIamBinding`" pulumi-lang-dotnet="`gcp.healthcare.ConsentStoreIamBinding`" pulumi-lang-go="`healthcare.ConsentStoreIamBinding`" pulumi-lang-python="`healthcare.ConsentStoreIamBinding`" pulumi-lang-yaml="`gcp.healthcare.ConsentStoreIamBinding`" pulumi-lang-java="`gcp.healthcare.ConsentStoreIamBinding`">`gcp.healthcare.ConsentStoreIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final Input<String> role;

  ConsentStoreIamMemberArgs({
    this.condition,
    required this.consentStoreId,
    required this.dataset,
    required this.member,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = Input.mapOptionalInputValue<
          ConsentStoreIamMemberCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['consentStoreId'] = consentStoreId;
    map['dataset'] = dataset;
    map['member'] = member;
    map['role'] = role;
    return map;
  }

  factory ConsentStoreIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return ConsentStoreIamMemberArgs(
      condition: Input.asOptionalInput<ConsentStoreIamMemberCondition>(
          map['condition']),
      consentStoreId: Input.asInput<String>(map['consentStoreId']),
      dataset: Input.asInput<String>(map['dataset']),
      member: Input.asInput<String>(map['member']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
