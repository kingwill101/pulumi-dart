// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnetwork_iammember_condition.dart';

/// {@template pulumi_compute_subnetwork_iammember_subnetwork_iammember_args_doc}
/// The set of arguments for SubnetworkIAMMember.
/// {@endtemplate}
/// {@macro pulumi_compute_subnetwork_iammember_subnetwork_iammember_args_doc}
class SubnetworkIAMMemberArgs {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final pulumi.Input<SubnetworkIAMMemberCondition>? condition;

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
  final pulumi.Input<String> member;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// The GCP region for this subnetwork.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? region;

  /// The role that should be applied. Only one
  /// `gcp.compute.SubnetworkIAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> subnetwork;

  /// Creates a new [SubnetworkIAMMemberArgs].
  /// [condition] An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// [member] Identities that will be granted the privilege in `role`.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The GCP region for this subnetwork.
  /// [role] The role that should be applied. Only one
  /// [subnetwork] Used to find the parent resource to bind the IAM policy to
  SubnetworkIAMMemberArgs({
    SubnetworkIAMMemberCondition? condition,
    required String member,
    String? project,
    String? region,
    required String role,
    required String subnetwork,
  }) : condition = pulumi.Input.asOptionalInput<SubnetworkIAMMemberCondition>(
         condition,
       ),
       member = pulumi.Input.asInput<String>(member),
       project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asOptionalInput<String>(region),
       role = pulumi.Input.asInput<String>(role),
       subnetwork = pulumi.Input.asInput<String>(subnetwork);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition':
          ?pulumi.Input.mapOptionalInputValue<
            SubnetworkIAMMemberCondition,
            Map<String, dynamic>
          >(condition, (value) => value.toMap()),
      'member': member,
      'project': ?project,
      'region': ?region,
      'role': role,
      'subnetwork': subnetwork,
    };
  }

  factory SubnetworkIAMMemberArgs.fromMap(Map<String, dynamic> map) {
    return SubnetworkIAMMemberArgs(
      condition: map['condition'] == null
          ? null
          : SubnetworkIAMMemberCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>(),
            ),
      member: map['member'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      role: map['role'] as String,
      subnetwork: map['subnetwork'] as String,
    );
  }
}
