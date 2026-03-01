// ignore_for_file: unused_element, unnecessary_cast


/// Status of Compliance Security Profile feature.
class ComplianceSecurityProfileDefinition {
  /// Compliance standards associated with the workspace.
  final List<String>? complianceStandards;
  final String? value;

  /// Creates a new [ComplianceSecurityProfileDefinition].
  /// [complianceStandards] Compliance standards associated with the workspace.
  /// [value] Optional.
  ComplianceSecurityProfileDefinition({
    this.complianceStandards,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complianceStandards': ?complianceStandards,
      'value': ?value,
    };
  }

  factory ComplianceSecurityProfileDefinition.fromMap(Map<String, dynamic> map) {
    return ComplianceSecurityProfileDefinition(
      complianceStandards: map['complianceStandards'] == null ? null : (map['complianceStandards'] as List).cast<String>(),
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

