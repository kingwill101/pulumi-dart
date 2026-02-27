// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAlertPolicy.
class GetAlertPolicyArgs {
  final pulumi.Input<String> alertPolicyId;
  final pulumi.Input<String>? project;

  GetAlertPolicyArgs({
    required this.alertPolicyId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['alertPolicyId'] = alertPolicyId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAlertPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAlertPolicyArgs(
      alertPolicyId: pulumi.Input.asInput<String>(map['alertPolicyId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
