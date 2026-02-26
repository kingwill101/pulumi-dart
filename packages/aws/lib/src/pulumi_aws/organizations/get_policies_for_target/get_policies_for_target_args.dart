// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getPoliciesForTarget.
class GetPoliciesForTargetArgs {
  /// Must supply one of the 7 different policy filters for a target (AISERVICES_OPT_OUT_POLICY | BACKUP_POLICY | CHATBOT_POLICY | DECLARATIVE_POLICY_EC2 | RESOURCE_CONTROL_POLICY | SERVICE_CONTROL_POLICY | TAG_POLICY)
  final Input<String> filter;

  /// The root (string that begins with "r-" followed by 4-32 lowercase letters or digits), account (12 digit string), or Organizational Unit (string starting with "ou-" followed by 4-32 lowercase letters or digits. This string is followed by a second "-" dash and from 8-32 additional lowercase letters or digits.)
  final Input<String> targetId;

  GetPoliciesForTargetArgs({
    required this.filter,
    required this.targetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filter'] = filter;
    map['targetId'] = targetId;
    return map;
  }

  factory GetPoliciesForTargetArgs.fromMap(Map<String, dynamic> map) {
    return GetPoliciesForTargetArgs(
      filter: Input.asInput<String>(map['filter']),
      targetId: Input.asInput<String>(map['targetId']),
    );
  }
}
