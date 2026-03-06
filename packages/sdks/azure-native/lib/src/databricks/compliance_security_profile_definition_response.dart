// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of Compliance Security Profile feature.
class ComplianceSecurityProfileDefinitionResponse {
  /// Compliance standards associated with the workspace.
  final pulumi.Input<List<String>>? complianceStandards;
  final pulumi.Input<String>? value;

  /// Creates a new [ComplianceSecurityProfileDefinitionResponse].
  /// [complianceStandards] Compliance standards associated with the workspace.
  /// [value] Optional.
  const ComplianceSecurityProfileDefinitionResponse({
    this.complianceStandards,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complianceStandards': ?complianceStandards,
      'value': ?value,
    };
  }

  factory ComplianceSecurityProfileDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ComplianceSecurityProfileDefinitionResponse(
      complianceStandards: (() { final guardedValue = map['complianceStandards']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

