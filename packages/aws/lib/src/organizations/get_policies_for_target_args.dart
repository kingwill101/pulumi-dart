// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_get_policies_for_target_get_policies_for_target_args_doc}
/// Arguments for getPoliciesForTarget.
/// {@endtemplate}
/// {@macro pulumi_organizations_get_policies_for_target_get_policies_for_target_args_doc}
class GetPoliciesForTargetArgs {
  /// Must supply one of the 7 different policy filters for a target (AISERVICES_OPT_OUT_POLICY | BACKUP_POLICY | CHATBOT_POLICY | DECLARATIVE_POLICY_EC2 | RESOURCE_CONTROL_POLICY | SERVICE_CONTROL_POLICY | TAG_POLICY)
  final pulumi.Input<String> filter;

  /// The root (string that begins with "r-" followed by 4-32 lowercase letters or digits), account (12 digit string), or Organizational Unit (string starting with "ou-" followed by 4-32 lowercase letters or digits. This string is followed by a second "-" dash and from 8-32 additional lowercase letters or digits.)
  final pulumi.Input<String> targetId;

  /// Creates a new [GetPoliciesForTargetArgs].
  /// [filter] Must supply one of the 7 different policy filters for a target (AISERVICES_OPT_OUT_POLICY | BACKUP_POLICY | CHATBOT_POLICY | DECLARATIVE_POLICY_EC2 | RESOURCE_CONTROL_POLICY | SERVICE_CONTROL_POLICY | TAG_POLICY)
  /// [targetId] The root (string that begins with "r-" followed by 4-32 lowercase letters or digits), account (12 digit string), or Organizational Unit (string starting with "ou-" followed by 4-32 lowercase letters or digits. This string is followed by a second "-" dash and from 8-32 additional lowercase letters or digits.)
  GetPoliciesForTargetArgs({required String filter, required String targetId})
    : filter = pulumi.Input.asInput<String>(filter),
      targetId = pulumi.Input.asInput<String>(targetId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'filter': filter, 'targetId': targetId};
  }

  factory GetPoliciesForTargetArgs.fromMap(Map<String, dynamic> map) {
    return GetPoliciesForTargetArgs(
      filter: map['filter'] as String,
      targetId: map['targetId'] as String,
    );
  }
}
