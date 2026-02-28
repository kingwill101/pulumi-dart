// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plugin_config_template_additional_config_template_enum_option.dart';
import 'plugin_config_template_additional_config_template_multi_select_option.dart';

class PluginConfigTemplateAdditionalConfigTemplate {
  /// Description.
  final String? description;

  /// Enum options. To be populated if `ValueType` is `ENUM`.
  /// Structure is documented below.
  final List<PluginConfigTemplateAdditionalConfigTemplateEnumOption>?
      enumOptions;

  /// ID of the config variable. Must be unique within the configuration.
  final String id;

  /// Multi select options. To be populated if `ValueType` is `MULTI_SELECT`.
  /// Structure is documented below.
  final List<PluginConfigTemplateAdditionalConfigTemplateMultiSelectOption>?
      multiSelectOptions;

  /// Flag represents that this `ConfigVariable` must be provided for a
  /// PluginInstance.
  final bool? required;

  /// Regular expression in RE2 syntax used for validating the `value` of a
  /// `ConfigVariable`.
  final String? validationRegex;

  /// Type of the parameter: string, int, bool etc.
  /// Possible values:
  /// VALUE_TYPE_UNSPECIFIED
  /// STRING
  /// INT
  /// BOOL
  /// SECRET
  /// ENUM
  /// MULTI_SELECT
  /// MULTI_STRING
  /// MULTI_INT
  final String valueType;

  /// Creates a new [PluginConfigTemplateAdditionalConfigTemplate].
  /// [description] Description.
  /// [enumOptions] Enum options. To be populated if `ValueType` is `ENUM`.
  /// [id] ID of the config variable. Must be unique within the configuration.
  /// [multiSelectOptions] Multi select options. To be populated if `ValueType` is `MULTI_SELECT`.
  /// [required] Flag represents that this `ConfigVariable` must be provided for a
  /// [validationRegex] Regular expression in RE2 syntax used for validating the `value` of a
  /// [valueType] Type of the parameter: string, int, bool etc.
  PluginConfigTemplateAdditionalConfigTemplate({
    this.description,
    this.enumOptions,
    required this.id,
    this.multiSelectOptions,
    this.required,
    this.validationRegex,
    required this.valueType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final enumOptionsValue = enumOptions;
    if (enumOptionsValue != null) {
      map['enumOptions'] = pulumi.Input.encodeList<
          PluginConfigTemplateAdditionalConfigTemplateEnumOption,
          Map<String, dynamic>>(enumOptionsValue, (value) => value.toMap());
    }
    map['id'] = id;
    final multiSelectOptionsValue = multiSelectOptions;
    if (multiSelectOptionsValue != null) {
      map['multiSelectOptions'] = pulumi.Input.encodeList<
              PluginConfigTemplateAdditionalConfigTemplateMultiSelectOption,
              Map<String, dynamic>>(
          multiSelectOptionsValue, (value) => value.toMap());
    }
    final requiredValue = required;
    if (requiredValue != null) {
      map['required'] = requiredValue;
    }
    final validationRegexValue = validationRegex;
    if (validationRegexValue != null) {
      map['validationRegex'] = validationRegexValue;
    }
    map['valueType'] = valueType;
    return map;
  }

  factory PluginConfigTemplateAdditionalConfigTemplate.fromMap(
      Map<String, dynamic> map) {
    return PluginConfigTemplateAdditionalConfigTemplate(
      description:
          map['description'] == null ? null : map['description'] as String,
      enumOptions: map['enumOptions'] == null
          ? null
          : pulumi.Input.decodeList<
                  PluginConfigTemplateAdditionalConfigTemplateEnumOption>(
              map['enumOptions'],
              (value) => PluginConfigTemplateAdditionalConfigTemplateEnumOption
                  .fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      multiSelectOptions: map['multiSelectOptions'] == null
          ? null
          : pulumi.Input.decodeList<
                  PluginConfigTemplateAdditionalConfigTemplateMultiSelectOption>(
              map['multiSelectOptions'],
              (value) =>
                  PluginConfigTemplateAdditionalConfigTemplateMultiSelectOption
                      .fromMap((value as Map).cast<String, dynamic>())),
      required: map['required'] == null ? null : map['required'] as bool,
      validationRegex: map['validationRegex'] == null
          ? null
          : map['validationRegex'] as String,
      valueType: map['valueType'] as String,
    );
  }
}
