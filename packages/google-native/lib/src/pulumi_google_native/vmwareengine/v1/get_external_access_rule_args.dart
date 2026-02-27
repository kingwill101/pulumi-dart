// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getExternalAccessRule.
class GetExternalAccessRuleArgs {
  final pulumi.Input<String> externalAccessRuleId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> networkPolicyId;
  final pulumi.Input<String>? project;

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
      externalAccessRuleId:
          pulumi.Input.asInput<String>(map['externalAccessRuleId']),
      location: pulumi.Input.asInput<String>(map['location']),
      networkPolicyId: pulumi.Input.asInput<String>(map['networkPolicyId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
