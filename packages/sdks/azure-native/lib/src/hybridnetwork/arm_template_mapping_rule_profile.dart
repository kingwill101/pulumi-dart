// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Template mapping rule profile
class ArmTemplateMappingRuleProfile {
  /// List of template parameters.
  final pulumi.Input<String>? templateParameters;

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
      templateParameters: (() { final guardedValue = map['templateParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

