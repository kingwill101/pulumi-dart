// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_privacy_dlp_v2_inspect_config.dart';

/// The set of arguments for OrganizationInspectTemplate.
class OrganizationInspectTemplateArgs {
  /// Short description (max 256 chars).
  final Input<String>? description;

  /// Display name (max 256 chars).
  final Input<String>? displayName;

  /// The core content of the template. Configuration of the scanning process.
  final Input<GooglePrivacyDlpV2InspectConfig>? inspectConfig;

  /// Deprecated. This field has no effect.
  final Input<String>? location;
  final Input<String> organizationId;

  /// The template id can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`. The maximum length is 100 characters. Can be empty to allow the system to generate one.
  final Input<String>? templateId;

  OrganizationInspectTemplateArgs({
    this.description,
    this.displayName,
    this.inspectConfig,
    this.location,
    required this.organizationId,
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
          GooglePrivacyDlpV2InspectConfig,
          Map<String, dynamic>>(inspectConfigValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['organizationId'] = organizationId;
    final templateIdValue = templateId;
    if (templateIdValue != null) {
      map['templateId'] = templateIdValue;
    }
    return map;
  }

  factory OrganizationInspectTemplateArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationInspectTemplateArgs(
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      inspectConfig: Input.asOptionalInput<GooglePrivacyDlpV2InspectConfig>(
          map['inspectConfig']),
      location: Input.asOptionalInput<String>(map['location']),
      organizationId: Input.asInput<String>(map['organizationId']),
      templateId: Input.asOptionalInput<String>(map['templateId']),
    );
  }
}
