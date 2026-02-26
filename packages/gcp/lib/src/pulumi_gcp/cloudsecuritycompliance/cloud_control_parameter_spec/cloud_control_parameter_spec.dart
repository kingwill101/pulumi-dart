// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cloud_control_parameter_spec_default_value/cloud_control_parameter_spec_default_value.dart';
import '../cloud_control_parameter_spec_sub_parameter/cloud_control_parameter_spec_sub_parameter.dart';
import '../cloud_control_parameter_spec_substitution_rule/cloud_control_parameter_spec_substitution_rule.dart';
import '../cloud_control_parameter_spec_validation/cloud_control_parameter_spec_validation.dart';

class CloudControlParameterSpec {
  /// Possible parameter value types.
  /// Structure is documented below.
  final CloudControlParameterSpecDefaultValue? defaultValue;

  /// The description of the parameter. The maximum length is 2000 characters.
  final String? description;

  /// The display name of the parameter. The maximum length is 200 characters.
  final String? displayName;

  /// if the parameter is required
  final bool isRequired;

  /// The name of the parameter.
  final String name;

  /// The parameter spec of the cloud control.
  /// Structure is documented below.
  final List<CloudControlParameterSpecSubParameter>? subParameters;

  /// List of parameter substitutions.
  /// Structure is documented below.
  final List<CloudControlParameterSpecSubstitutionRule>? substitutionRules;

  /// Validation of the parameter.
  /// Structure is documented below.
  final CloudControlParameterSpecValidation? validation;

  /// Parameter value type.
  /// Possible values:
  /// STRING
  /// BOOLEAN
  /// STRINGLIST
  /// NUMBER
  /// ONEOF
  final String valueType;

  CloudControlParameterSpec({
    this.defaultValue,
    this.description,
    this.displayName,
    required this.isRequired,
    required this.name,
    this.subParameters,
    this.substitutionRules,
    this.validation,
    required this.valueType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultValueValue = defaultValue;
    if (defaultValueValue != null) {
      map['defaultValue'] = defaultValueValue.toMap();
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['isRequired'] = isRequired;
    map['name'] = name;
    final subParametersValue = subParameters;
    if (subParametersValue != null) {
      map['subParameters'] = Input.encodeList<
          CloudControlParameterSpecSubParameter,
          Map<String, dynamic>>(subParametersValue, (value) => value.toMap());
    }
    final substitutionRulesValue = substitutionRules;
    if (substitutionRulesValue != null) {
      map['substitutionRules'] = Input.encodeList<
              CloudControlParameterSpecSubstitutionRule, Map<String, dynamic>>(
          substitutionRulesValue, (value) => value.toMap());
    }
    final validationValue = validation;
    if (validationValue != null) {
      map['validation'] = validationValue.toMap();
    }
    map['valueType'] = valueType;
    return map;
  }

  factory CloudControlParameterSpec.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpec(
      defaultValue: map['defaultValue'] == null
          ? null
          : CloudControlParameterSpecDefaultValue.fromMap(
              (map['defaultValue'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      isRequired: map['isRequired'] as bool,
      name: map['name'] as String,
      subParameters: map['subParameters'] == null
          ? null
          : Input.decodeList<CloudControlParameterSpecSubParameter>(
              map['subParameters'],
              (value) => CloudControlParameterSpecSubParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      substitutionRules: map['substitutionRules'] == null
          ? null
          : Input.decodeList<CloudControlParameterSpecSubstitutionRule>(
              map['substitutionRules'],
              (value) => CloudControlParameterSpecSubstitutionRule.fromMap(
                  (value as Map).cast<String, dynamic>())),
      validation: map['validation'] == null
          ? null
          : CloudControlParameterSpecValidation.fromMap(
              (map['validation'] as Map).cast<String, dynamic>()),
      valueType: map['valueType'] as String,
    );
  }
}
