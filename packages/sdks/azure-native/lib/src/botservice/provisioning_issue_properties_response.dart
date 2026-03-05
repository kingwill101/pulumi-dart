// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nsp_access_rule_response.dart';

/// Properties of Provisioning Issue
class ProvisioningIssuePropertiesResponse {
  /// Description of the issue
  final pulumi.Input<String>? description;
  /// Type of Issue
  final pulumi.Input<String>? issueType;
  /// Provisioning state of Network Security Perimeter configuration propagation
  final pulumi.Input<String>? severity;
  /// Access rules that can be added to the same profile to remediate the issue.
  final pulumi.Input<List<NspAccessRuleResponse>>? suggestedAccessRules;
  /// ARM IDs of resources that can be associated to the same perimeter to remediate the issue.
  final pulumi.Input<List<String>> suggestedResourceIds;

  /// Creates a new [ProvisioningIssuePropertiesResponse].
  /// [description] Description of the issue
  /// [issueType] Type of Issue
  /// [severity] Provisioning state of Network Security Perimeter configuration propagation
  /// [suggestedAccessRules] Access rules that can be added to the same profile to remediate the issue.
  /// [suggestedResourceIds] ARM IDs of resources that can be associated to the same perimeter to remediate the issue.
  ProvisioningIssuePropertiesResponse({
    this.description,
    this.issueType,
    this.severity,
    this.suggestedAccessRules,
    required this.suggestedResourceIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'issueType': ?issueType,
      'severity': ?severity,
      'suggestedAccessRules': ?pulumi.Input.mapOptionalInputValue<List<NspAccessRuleResponse>, List<Map<String, dynamic>>>(suggestedAccessRules, (value) => pulumi.Input.encodeList<NspAccessRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'suggestedResourceIds': suggestedResourceIds,
    };
  }

  factory ProvisioningIssuePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ProvisioningIssuePropertiesResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      issueType: (() { final guardedValue = map['issueType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      suggestedAccessRules: (() { final guardedValue = map['suggestedAccessRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NspAccessRuleResponse>(guardedValue, (value) => NspAccessRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      suggestedResourceIds: pulumi.Input.fromValue((map['suggestedResourceIds'] as List).cast<String>()),
    );
  }
}

