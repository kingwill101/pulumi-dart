// ignore_for_file: unused_element, unnecessary_cast


/// Template mapping rule profile
class ArmTemplateMappingRuleProfileResponse {
  /// List of template parameters.
  final String? templateParameters;

  /// Creates a new [ArmTemplateMappingRuleProfileResponse].
  /// [templateParameters] List of template parameters.
  ArmTemplateMappingRuleProfileResponse({
    this.templateParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'templateParameters': ?templateParameters,
    };
  }

  factory ArmTemplateMappingRuleProfileResponse.fromMap(Map<String, dynamic> map) {
    return ArmTemplateMappingRuleProfileResponse(
      templateParameters: map['templateParameters'] == null ? null : map['templateParameters'] as String,
    );
  }
}

