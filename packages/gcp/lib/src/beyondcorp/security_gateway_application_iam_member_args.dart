// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_gateway_application_iam_member_condition.dart';

/// {@template pulumi_beyondcorp_security_gateway_application_iam_member_security_gateway_application_iam_member_args_doc}
/// The set of arguments for SecurityGatewayApplicationIamMember.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_security_gateway_application_iam_member_security_gateway_application_iam_member_args_doc}
class SecurityGatewayApplicationIamMemberArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> applicationId;
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final pulumi.Input<SecurityGatewayApplicationIamMemberCondition>? condition;
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
  /// The role that should be applied. Only one
  /// `gcp.beyondcorp.SecurityGatewayApplicationIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;
  /// ID of the Security Gateway resource this belongs to. Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> securityGatewayId;

  /// Creates a new [SecurityGatewayApplicationIamMemberArgs].
  /// [applicationId] Used to find the parent resource to bind the IAM policy to
  /// [condition] An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// [member] Identities that will be granted the privilege in `role`.
  /// [project] The ID of the project in which the resource belongs.
  /// [role] The role that should be applied. Only one
  /// [securityGatewayId] ID of the Security Gateway resource this belongs to. Used to find the parent resource to bind the IAM policy to
  SecurityGatewayApplicationIamMemberArgs({
    required String applicationId,
    SecurityGatewayApplicationIamMemberCondition? condition,
    required String member,
    String? project,
    required String role,
    required String securityGatewayId,
  }) :
      applicationId = pulumi.Input.asInput<String>(applicationId),
      condition = pulumi.Input.asOptionalInput<SecurityGatewayApplicationIamMemberCondition>(condition),
      member = pulumi.Input.asInput<String>(member),
      project = pulumi.Input.asOptionalInput<String>(project),
      role = pulumi.Input.asInput<String>(role),
      securityGatewayId = pulumi.Input.asInput<String>(securityGatewayId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'condition': ?pulumi.Input.mapOptionalInputValue<SecurityGatewayApplicationIamMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'member': member,
      'project': ?project,
      'role': role,
      'securityGatewayId': securityGatewayId,
    };
  }

  factory SecurityGatewayApplicationIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayApplicationIamMemberArgs(
      applicationId: map['applicationId'] as String,
      condition: map['condition'] == null ? null : SecurityGatewayApplicationIamMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>()),
      member: map['member'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      role: map['role'] as String,
      securityGatewayId: map['securityGatewayId'] as String,
    );
  }
}

