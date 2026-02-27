// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_privacy_dlp_v2_deidentify_config.dart';

/// The set of arguments for OrganizationsDeidentifyTemplate.
class OrganizationsDeidentifyTemplateArgs {
  /// The core content of the template.
  final Input<GooglePrivacyDlpV2DeidentifyConfig>? deidentifyConfig;

  /// Short description (max 256 chars).
  final Input<String>? description;

  /// Display name (max 256 chars).
  final Input<String>? displayName;

  /// Deprecated. This field has no effect.
  final Input<String>? location;
  final Input<String> organizationId;

  /// The template id can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`. The maximum length is 100 characters. Can be empty to allow the system to generate one.
  final Input<String>? templateId;

  OrganizationsDeidentifyTemplateArgs({
    this.deidentifyConfig,
    this.description,
    this.displayName,
    this.location,
    required this.organizationId,
    this.templateId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deidentifyConfigValue = deidentifyConfig;
    if (deidentifyConfigValue != null) {
      map['deidentifyConfig'] = Input.mapOptionalInputValue<
              GooglePrivacyDlpV2DeidentifyConfig, Map<String, dynamic>>(
          deidentifyConfigValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
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

  factory OrganizationsDeidentifyTemplateArgs.fromMap(
      Map<String, dynamic> map) {
    return OrganizationsDeidentifyTemplateArgs(
      deidentifyConfig:
          Input.asOptionalInput<GooglePrivacyDlpV2DeidentifyConfig>(
              map['deidentifyConfig']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      location: Input.asOptionalInput<String>(map['location']),
      organizationId: Input.asInput<String>(map['organizationId']),
      templateId: Input.asOptionalInput<String>(map['templateId']),
    );
  }
}
