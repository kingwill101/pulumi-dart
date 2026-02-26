// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../environment_iam_member_condition/environment_iam_member_condition.dart';

/// The set of arguments for EnvironmentIamMember.
class EnvironmentIamMemberArgs {
  final Input<EnvironmentIamMemberCondition>? condition;

  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> envId;

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

  /// The Apigee Organization associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}`.
  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> orgId;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.apigee.EnvironmentIamBinding`" pulumi-lang-dotnet="`gcp.apigee.EnvironmentIamBinding`" pulumi-lang-go="`apigee.EnvironmentIamBinding`" pulumi-lang-python="`apigee.EnvironmentIamBinding`" pulumi-lang-yaml="`gcp.apigee.EnvironmentIamBinding`" pulumi-lang-java="`gcp.apigee.EnvironmentIamBinding`">`gcp.apigee.EnvironmentIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final Input<String> role;

  EnvironmentIamMemberArgs({
    this.condition,
    required this.envId,
    required this.member,
    required this.orgId,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = Input.mapOptionalInputValue<
          EnvironmentIamMemberCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['envId'] = envId;
    map['member'] = member;
    map['orgId'] = orgId;
    map['role'] = role;
    return map;
  }

  factory EnvironmentIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentIamMemberArgs(
      condition: Input.asOptionalInput<EnvironmentIamMemberCondition>(
          map['condition']),
      envId: Input.asInput<String>(map['envId']),
      member: Input.asInput<String>(map['member']),
      orgId: Input.asInput<String>(map['orgId']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
