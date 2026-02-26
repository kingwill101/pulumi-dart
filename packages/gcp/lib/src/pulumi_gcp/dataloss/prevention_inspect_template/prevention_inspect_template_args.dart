// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../prevention_inspect_template_inspect_config/prevention_inspect_template_inspect_config.dart';

/// The set of arguments for PreventionInspectTemplate.
class PreventionInspectTemplateArgs {
  /// A description of the inspect template.
  final Input<String>? description;

  /// User set display name of the inspect template.
  final Input<String>? displayName;

  /// The core content of the template.
  /// Structure is documented below.
  final Input<PreventionInspectTemplateInspectConfig>? inspectConfig;

  /// The parent of the inspect template in any of the following formats:
  /// * `projects/{{project}}`
  /// * `projects/{{project}}/locations/{{location}}`
  /// * `organizations/{{organization_id}}`
  /// * `organizations/{{organization_id}}/locations/{{location}}`
  final Input<String> parent;

  /// The template id can contain uppercase and lowercase letters, numbers, and hyphens;
  /// that is, it must match the regular expression: [a-zA-Z\d-_]+. The maximum length is
  /// 100 characters. Can be empty to allow the system to generate one.
  final Input<String>? templateId;

  PreventionInspectTemplateArgs({
    this.description,
    this.displayName,
    this.inspectConfig,
    required this.parent,
    this.templateId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final inspectConfigValue = inspectConfig;
    if (inspectConfigValue != null) {
      map['inspectConfig'] = Input.mapOptionalInputValue<
          PreventionInspectTemplateInspectConfig,
          Map<String, dynamic>>(inspectConfigValue, (value) => value.toMap());
    }
    map['parent'] = parent;
    final templateIdValue = templateId;
    if (templateIdValue != null) {
      map['templateId'] = templateIdValue;
    }
    return map;
  }

  factory PreventionInspectTemplateArgs.fromMap(Map<String, dynamic> map) {
    return PreventionInspectTemplateArgs(
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      inspectConfig:
          Input.asOptionalInput<PreventionInspectTemplateInspectConfig>(
              map['inspectConfig']),
      parent: Input.asInput<String>(map['parent']),
      templateId: Input.asOptionalInput<String>(map['templateId']),
    );
  }
}
