// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_iammember_condition.dart';

/// {@template pulumi_spanner_instance_iammember_instance_iammember_args_doc}
/// The set of arguments for InstanceIAMMember.
/// {@endtemplate}
/// {@macro pulumi_spanner_instance_iammember_instance_iammember_args_doc}
class InstanceIAMMemberArgs {
  final pulumi.Input<InstanceIAMMemberCondition>? condition;

  /// The name of the instance.
  final pulumi.Input<String> instance;

  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **principal:{principal}**: Federated single identity. For example, principal://iam.googleapis.com/projects/PROJECT_NUMBER/locations/global/workloadIdentityPools/PROJECT_ID.svc.id.goog/subject/ns/NAMESPACE/sa/SERVICEACCOUNT
  /// * **principalSet:{principalSet}**: Federated identity group. For example, principalSet://iam.googleapis.com/projects/PROJECT_NUMBER/locations/global/workloadIdentityPools/PROJECT_ID.svc.id.goog/namespace/NAMESPACE
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<String> member;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The role that should be applied. Only one
  /// `gcp.spanner.InstanceIAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// Creates a new [InstanceIAMMemberArgs].
  /// [condition] Optional.
  /// [instance] The name of the instance.
  /// [member] Identities that will be granted the privilege in `role`.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [role] The role that should be applied. Only one
  InstanceIAMMemberArgs({
    InstanceIAMMemberCondition? condition,
    required String instance,
    required String member,
    String? project,
    required String role,
  })  : condition =
            pulumi.Input.asOptionalInput<InstanceIAMMemberCondition>(condition),
        instance = pulumi.Input.asInput<String>(instance),
        member = pulumi.Input.asInput<String>(member),
        project = pulumi.Input.asOptionalInput<String>(project),
        role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          InstanceIAMMemberCondition,
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

  factory InstanceIAMMemberArgs.fromMap(Map<String, dynamic> map) {
    return InstanceIAMMemberArgs(
      condition: map['condition'] == null
          ? null
          : InstanceIAMMemberCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>()),
      instance: map['instance'] as String,
      member: map['member'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      role: map['role'] as String,
    );
  }
}
