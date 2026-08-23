// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Compliance status of the Agent Space
class AgentSpaceComplianceStatusResponse {
  /// List of compliance issues found in the Agent Space
  final pulumi.Input<List<String>> complianceIssues;
  /// Indicates whether the Agent Space is compliant
  final pulumi.Input<bool> isCompliant;
  /// Timestamp of the last compliance check
  final pulumi.Input<String> lastComplianceCheck;

  /// Creates a new [AgentSpaceComplianceStatusResponse].
  /// [complianceIssues] List of compliance issues found in the Agent Space
  /// [isCompliant] Indicates whether the Agent Space is compliant
  /// [lastComplianceCheck] Timestamp of the last compliance check
  const AgentSpaceComplianceStatusResponse({
    required this.complianceIssues,
    required this.isCompliant,
    required this.lastComplianceCheck,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complianceIssues': complianceIssues,
      'isCompliant': isCompliant,
      'lastComplianceCheck': lastComplianceCheck,
    };
  }

  factory AgentSpaceComplianceStatusResponse.fromMap(Map<String, dynamic> map) {
    return AgentSpaceComplianceStatusResponse(
      complianceIssues: pulumi.Input.fromValue((map['complianceIssues'] as List).cast<String>()),
      isCompliant: pulumi.Input.fromValue(map['isCompliant'] as bool),
      lastComplianceCheck: pulumi.Input.fromValue(map['lastComplianceCheck'] as String),
    );
  }
}
