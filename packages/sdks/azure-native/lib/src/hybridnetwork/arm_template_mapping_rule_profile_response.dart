// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Template mapping rule profile
class ArmTemplateMappingRuleProfileResponse {
  /// List of template parameters.
  final pulumi.Input<String>? templateParameters;

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
      templateParameters: map['templateParameters'] == null ? null : (map['templateParameters']! as String).input(),
    );
  }
}

