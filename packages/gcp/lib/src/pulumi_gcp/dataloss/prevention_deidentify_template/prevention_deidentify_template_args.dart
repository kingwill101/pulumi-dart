// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../prevention_deidentify_template_deidentify_config/prevention_deidentify_template_deidentify_config.dart';

/// The set of arguments for PreventionDeidentifyTemplate.
class PreventionDeidentifyTemplateArgs {
  /// Configuration of the deidentify template
  /// Structure is documented below.
  final Input<PreventionDeidentifyTemplateDeidentifyConfig> deidentifyConfig;

  /// A description of the template.
  final Input<String>? description;

  /// User set display name of the template.
  final Input<String>? displayName;

  /// The parent of the template in any of the following formats:
  /// * `projects/{{project}}`
  /// * `projects/{{project}}/locations/{{location}}`
  /// * `organizations/{{organization_id}}`
  /// * `organizations/{{organization_id}}/locations/{{location}}`
  final Input<String> parent;

  /// The template id can contain uppercase and lowercase letters, numbers, and hyphens;
  /// that is, it must match the regular expression: [a-zA-Z\d-_]+. The maximum length is
  /// 100 characters. Can be empty to allow the system to generate one.
  final Input<String>? templateId;

  PreventionDeidentifyTemplateArgs({
    required this.deidentifyConfig,
    this.description,
    this.displayName,
    required this.parent,
    this.templateId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deidentifyConfig'] = Input.mapInputValue<
        PreventionDeidentifyTemplateDeidentifyConfig,
        Map<String, dynamic>>(deidentifyConfig, (value) => value.toMap());
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['parent'] = parent;
    final templateIdValue = templateId;
    if (templateIdValue != null) {
      map['templateId'] = templateIdValue;
    }
    return map;
  }

  factory PreventionDeidentifyTemplateArgs.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateArgs(
      deidentifyConfig:
          Input.asInput<PreventionDeidentifyTemplateDeidentifyConfig>(
              map['deidentifyConfig']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      parent: Input.asInput<String>(map['parent']),
      templateId: Input.asOptionalInput<String>(map['templateId']),
    );
  }
}
