// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_inspect_template_inspect_config.dart';

/// {@template pulumi_dataloss_prevention_inspect_template_prevention_inspect_template_args_doc}
/// The set of arguments for PreventionInspectTemplate.
/// {@endtemplate}
/// {@macro pulumi_dataloss_prevention_inspect_template_prevention_inspect_template_args_doc}
class PreventionInspectTemplateArgs {
  /// A description of the inspect template.
  final pulumi.Input<String>? description;

  /// User set display name of the inspect template.
  final pulumi.Input<String>? displayName;

  /// The core content of the template.
  /// Structure is documented below.
  final pulumi.Input<PreventionInspectTemplateInspectConfig>? inspectConfig;

  /// The parent of the inspect template in any of the following formats:
  /// * `projects/{{project}}`
  /// * `projects/{{project}}/locations/{{location}}`
  /// * `organizations/{{organization_id}}`
  /// * `organizations/{{organization_id}}/locations/{{location}}`
  final pulumi.Input<String> parent;

  /// The template id can contain uppercase and lowercase letters, numbers, and hyphens;
  /// that is, it must match the regular expression: [a-zA-Z\d-_]+. The maximum length is
  /// 100 characters. Can be empty to allow the system to generate one.
  final pulumi.Input<String>? templateId;

  /// Creates a new [PreventionInspectTemplateArgs].
  /// [description] A description of the inspect template.
  /// [displayName] User set display name of the inspect template.
  /// [inspectConfig] The core content of the template.
  /// [parent] The parent of the inspect template in any of the following formats:
  /// [templateId] The template id can contain uppercase and lowercase letters, numbers, and hyphens;
  PreventionInspectTemplateArgs({
    String? description,
    String? displayName,
    PreventionInspectTemplateInspectConfig? inspectConfig,
    required String parent,
    String? templateId,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        inspectConfig = pulumi.Input.asOptionalInput<
            PreventionInspectTemplateInspectConfig>(inspectConfig),
        parent = pulumi.Input.asInput<String>(parent),
        templateId = pulumi.Input.asOptionalInput<String>(templateId);

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
      map['inspectConfig'] = pulumi.Input.mapOptionalInputValue<
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
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      inspectConfig: map['inspectConfig'] == null
          ? null
          : PreventionInspectTemplateInspectConfig.fromMap(
              (map['inspectConfig'] as Map).cast<String, dynamic>()),
      parent: map['parent'] as String,
      templateId:
          map['templateId'] == null ? null : map['templateId'] as String,
    );
  }
}
