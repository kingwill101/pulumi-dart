// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../iambinding_condition/iambinding_condition_projects.dart';

/// The set of arguments for IAMBinding.
class IAMBindingProjectsIAmbindingArgs {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final pulumi.Input<IAMBindingConditionProjects>? condition;

  /// Identities that will be granted the privilege in `role`. gcp.projects.IAMBinding expects `members` field while gcp.projects.IAMMember expects `member` field.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<List<String>> members;

  /// The project id of the target project. This is not
  /// inferred from the provider.
  final pulumi.Input<String> project;

  /// The role that should be applied. Only one
  /// `gcp.projects.IAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  IAMBindingProjectsIAmbindingArgs({
    this.condition,
    required this.members,
    required this.project,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          IAMBindingConditionProjects,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['members'] = members;
    map['project'] = project;
    map['role'] = role;
    return map;
  }

  factory IAMBindingProjectsIAmbindingArgs.fromMap(Map<String, dynamic> map) {
    return IAMBindingProjectsIAmbindingArgs(
      condition: pulumi.Input.asOptionalInput<IAMBindingConditionProjects>(
          map['condition']),
      members: pulumi.Input.asInput<List<String>>(map['members']),
      project: pulumi.Input.asInput<String>(map['project']),
      role: pulumi.Input.asInput<String>(map['role']),
    );
  }
}
