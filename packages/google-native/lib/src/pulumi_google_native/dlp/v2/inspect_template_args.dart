// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_inspect_config.dart';

/// The set of arguments for InspectTemplate.
class InspectTemplateArgs {
  /// Short description (max 256 chars).
  final pulumi.Input<String>? description;

  /// Display name (max 256 chars).
  final pulumi.Input<String>? displayName;

  /// The core content of the template. Configuration of the scanning process.
  final pulumi.Input<GooglePrivacyDlpV2InspectConfig>? inspectConfig;

  /// Deprecated. This field has no effect.
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// The template id can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`. The maximum length is 100 characters. Can be empty to allow the system to generate one.
  final pulumi.Input<String>? templateId;

  InspectTemplateArgs({
    this.description,
    this.displayName,
    this.inspectConfig,
    this.location,
    this.project,
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
      map['inspectConfig'] = pulumi.Input.mapOptionalInputValue<
          GooglePrivacyDlpV2InspectConfig,
          Map<String, dynamic>>(inspectConfigValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final templateIdValue = templateId;
    if (templateIdValue != null) {
      map['templateId'] = templateIdValue;
    }
    return map;
  }

  factory InspectTemplateArgs.fromMap(Map<String, dynamic> map) {
    return InspectTemplateArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      inspectConfig:
          pulumi.Input.asOptionalInput<GooglePrivacyDlpV2InspectConfig>(
              map['inspectConfig']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      templateId: pulumi.Input.asOptionalInput<String>(map['templateId']),
    );
  }
}
