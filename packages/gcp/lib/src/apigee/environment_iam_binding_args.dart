// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_iam_binding_condition.dart';

/// {@template pulumi_apigee_environment_iam_binding_environment_iam_binding_args_doc}
/// The set of arguments for EnvironmentIamBinding.
/// {@endtemplate}
/// {@macro pulumi_apigee_environment_iam_binding_environment_iam_binding_args_doc}
class EnvironmentIamBindingArgs {
  final pulumi.Input<EnvironmentIamBindingCondition>? condition;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> envId;

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

  /// The Apigee Organization associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}`.
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> orgId;

  /// The role that should be applied. Only one
  /// `gcp.apigee.EnvironmentIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// Creates a new [EnvironmentIamBindingArgs].
  /// [condition] Optional.
  /// [envId] Used to find the parent resource to bind the IAM policy to
  /// [members] Identities that will be granted the privilege in `role`.
  /// [orgId] The Apigee Organization associated with the Apigee environment,
  /// [role] The role that should be applied. Only one
  EnvironmentIamBindingArgs({
    EnvironmentIamBindingCondition? condition,
    required String envId,
    required List<String> members,
    required String orgId,
    required String role,
  })  : condition =
            pulumi.Input.asOptionalInput<EnvironmentIamBindingCondition>(
                condition),
        envId = pulumi.Input.asInput<String>(envId),
        members = pulumi.Input.asInput<List<String>>(members),
        orgId = pulumi.Input.asInput<String>(orgId),
        role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          EnvironmentIamBindingCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['envId'] = envId;
    map['members'] = members;
    map['orgId'] = orgId;
    map['role'] = role;
    return map;
  }

  factory EnvironmentIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentIamBindingArgs(
      condition: map['condition'] == null
          ? null
          : EnvironmentIamBindingCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>()),
      envId: map['envId'] as String,
      members: (map['members'] as List).cast<String>(),
      orgId: map['orgId'] as String,
      role: map['role'] as String,
    );
  }
}
