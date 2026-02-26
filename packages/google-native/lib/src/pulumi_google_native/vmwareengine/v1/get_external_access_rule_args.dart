// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getExternalAccessRule.
class GetExternalAccessRuleArgs {
  final Input<String> externalAccessRuleId;
  final Input<String> location;
  final Input<String> networkPolicyId;
  final Input<String>? project;

  GetExternalAccessRuleArgs({
    required this.externalAccessRuleId,
    required this.location,
    required this.networkPolicyId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['externalAccessRuleId'] = externalAccessRuleId;
    map['location'] = location;
    map['networkPolicyId'] = networkPolicyId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetExternalAccessRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetExternalAccessRuleArgs(
      externalAccessRuleId: Input.asInput<String>(map['externalAccessRuleId']),
      location: Input.asInput<String>(map['location']),
      networkPolicyId: Input.asInput<String>(map['networkPolicyId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
