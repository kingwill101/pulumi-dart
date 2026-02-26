// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getPolicies.
class GetPoliciesArgs {
  /// The type of policies to be returned in the response. Valid values are `AISERVICES_OPT_OUT_POLICY | BACKUP_POLICY | CHATBOT_POLICY | DECLARATIVE_POLICY_EC2 | RESOURCE_CONTROL_POLICY | SERVICE_CONTROL_POLICY | TAG_POLICY`
  final Input<String> filter;

  GetPoliciesArgs({
    required this.filter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filter'] = filter;
    return map;
  }

  factory GetPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetPoliciesArgs(
      filter: Input.asInput<String>(map['filter']),
    );
  }
}
