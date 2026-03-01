// ignore_for_file: unused_element, unnecessary_cast


/// Template mapping rule profile
class ArmTemplateMappingRuleProfile {
  /// List of template parameters.
  final String? templateParameters;

  /// Creates a new [ArmTemplateMappingRuleProfile].
  /// [templateParameters] List of template parameters.
  ArmTemplateMappingRuleProfile({
    this.templateParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'templateParameters': ?templateParameters,
    };
  }

  factory ArmTemplateMappingRuleProfile.fromMap(Map<String, dynamic> map) {
    return ArmTemplateMappingRuleProfile(
      templateParameters: map['templateParameters'] == null ? null : map['templateParameters'] as String,
    );
  }
}

