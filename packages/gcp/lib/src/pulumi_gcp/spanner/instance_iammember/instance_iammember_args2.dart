// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_iammember_condition/instance_iammember_condition2.dart';

/// The set of arguments for InstanceIAMMember.
class InstanceIAMMemberArgs2 {
  final Input<InstanceIAMMemberCondition2>? condition;

  /// The name of the instance.
  final Input<String> instance;

  /// Identities that will be granted the privilege in <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span>.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **principal:{principal}**: Federated single identity. For example, principal://iam.googleapis.com/projects/PROJECT_NUMBER/locations/global/workloadIdentityPools/PROJECT_ID.svc.id.goog/subject/ns/NAMESPACE/sa/SERVICEACCOUNT
  /// * **principalSet:{principalSet}**: Federated identity group. For example, principalSet://iam.googleapis.com/projects/PROJECT_NUMBER/locations/global/workloadIdentityPools/PROJECT_ID.svc.id.goog/namespace/NAMESPACE
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final Input<String> member;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.spanner.InstanceIAMBinding`" pulumi-lang-dotnet="`gcp.spanner.InstanceIAMBinding`" pulumi-lang-go="`spanner.InstanceIAMBinding`" pulumi-lang-python="`spanner.InstanceIAMBinding`" pulumi-lang-yaml="`gcp.spanner.InstanceIAMBinding`" pulumi-lang-java="`gcp.spanner.InstanceIAMBinding`">`gcp.spanner.InstanceIAMBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final Input<String> role;

  InstanceIAMMemberArgs2({
    this.condition,
    required this.instance,
    required this.member,
    this.project,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = Input.mapOptionalInputValue<
          InstanceIAMMemberCondition2,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['instance'] = instance;
    map['member'] = member;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['role'] = role;
    return map;
  }

  factory InstanceIAMMemberArgs2.fromMap(Map<String, dynamic> map) {
    return InstanceIAMMemberArgs2(
      condition:
          Input.asOptionalInput<InstanceIAMMemberCondition2>(map['condition']),
      instance: Input.asInput<String>(map['instance']),
      member: Input.asInput<String>(map['member']),
      project: Input.asOptionalInput<String>(map['project']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
