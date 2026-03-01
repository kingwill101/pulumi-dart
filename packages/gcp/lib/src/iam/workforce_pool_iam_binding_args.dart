// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workforce_pool_iam_binding_condition.dart';

/// {@template pulumi_iam_workforce_pool_iam_binding_workforce_pool_iam_binding_args_doc}
/// The set of arguments for WorkforcePoolIamBinding.
/// {@endtemplate}
/// {@macro pulumi_iam_workforce_pool_iam_binding_workforce_pool_iam_binding_args_doc}
class WorkforcePoolIamBindingArgs {
  final pulumi.Input<WorkforcePoolIamBindingCondition>? condition;

  /// The location for the resource. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;

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

  /// The role that should be applied. Only one
  /// `gcp.iam.WorkforcePoolIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> workforcePoolId;

  /// Creates a new [WorkforcePoolIamBindingArgs].
  /// [condition] Optional.
  /// [location] The location for the resource. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [members] Identities that will be granted the privilege in `role`.
  /// [role] The role that should be applied. Only one
  /// [workforcePoolId] Used to find the parent resource to bind the IAM policy to
  WorkforcePoolIamBindingArgs({
    WorkforcePoolIamBindingCondition? condition,
    String? location,
    required List<String> members,
    required String role,
    required String workforcePoolId,
  }) : condition = pulumi
           .Input.asOptionalInput<WorkforcePoolIamBindingCondition>(condition),
       location = pulumi.Input.asOptionalInput<String>(location),
       members = pulumi.Input.asInput<List<String>>(members),
       role = pulumi.Input.asInput<String>(role),
       workforcePoolId = pulumi.Input.asInput<String>(workforcePoolId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition':
          ?pulumi.Input.mapOptionalInputValue<
            WorkforcePoolIamBindingCondition,
            Map<String, dynamic>
          >(condition, (value) => value.toMap()),
      'location': ?location,
      'members': members,
      'role': role,
      'workforcePoolId': workforcePoolId,
    };
  }

  factory WorkforcePoolIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolIamBindingArgs(
      condition: map['condition'] == null
          ? null
          : WorkforcePoolIamBindingCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>(),
            ),
      location: map['location'] == null ? null : map['location'] as String,
      members: (map['members'] as List).cast<String>(),
      role: map['role'] as String,
      workforcePoolId: map['workforcePoolId'] as String,
    );
  }
}
