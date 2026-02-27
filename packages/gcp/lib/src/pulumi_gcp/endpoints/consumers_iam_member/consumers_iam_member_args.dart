// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../consumers_iam_member_condition/consumers_iam_member_condition.dart';

/// The set of arguments for ConsumersIamMember.
class ConsumersIamMemberArgs {
  final pulumi.Input<ConsumersIamMemberCondition>? condition;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> consumerProject;

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

  /// The role that should be applied. Only one
  /// `gcp.endpoints.ConsumersIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// The name of the service. Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> serviceName;

  ConsumersIamMemberArgs({
    this.condition,
    required this.consumerProject,
    required this.member,
    required this.role,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          ConsumersIamMemberCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['consumerProject'] = consumerProject;
    map['member'] = member;
    map['role'] = role;
    map['serviceName'] = serviceName;
    return map;
  }

  factory ConsumersIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return ConsumersIamMemberArgs(
      condition: pulumi.Input.asOptionalInput<ConsumersIamMemberCondition>(
          map['condition']),
      consumerProject: pulumi.Input.asInput<String>(map['consumerProject']),
      member: pulumi.Input.asInput<String>(map['member']),
      role: pulumi.Input.asInput<String>(map['role']),
      serviceName: pulumi.Input.asInput<String>(map['serviceName']),
    );
  }
}
