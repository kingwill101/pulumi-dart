// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_deidentify_config.dart';

/// {@template pulumi_dlp_v2_organizations_deidentify_template_args_doc}
/// The set of arguments for OrganizationsDeidentifyTemplate.
/// {@endtemplate}
/// {@macro pulumi_dlp_v2_organizations_deidentify_template_args_doc}
class OrganizationsDeidentifyTemplateArgs {
  /// The core content of the template.
  final pulumi.Input<GooglePrivacyDlpV2DeidentifyConfig>? deidentifyConfig;
  /// Short description (max 256 chars).
  final pulumi.Input<String>? description;
  /// Display name (max 256 chars).
  final pulumi.Input<String>? displayName;
  /// Deprecated. This field has no effect.
  final pulumi.Input<String>? location;
  final pulumi.Input<String> organizationId;
  /// The template id can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`. The maximum length is 100 characters. Can be empty to allow the system to generate one.
  final pulumi.Input<String>? templateId;

  /// Creates a new [OrganizationsDeidentifyTemplateArgs].
  /// [deidentifyConfig] The core content of the template.
  /// [description] Short description (max 256 chars).
  /// [displayName] Display name (max 256 chars).
  /// [location] Deprecated. This field has no effect.
  /// [organizationId] Required.
  /// [templateId] The template id can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`. The maximum length is 100 characters. Can be empty to allow the system to generate one.
  OrganizationsDeidentifyTemplateArgs({
    GooglePrivacyDlpV2DeidentifyConfig? deidentifyConfig,
    String? description,
    String? displayName,
    String? location,
    required String organizationId,
    String? templateId,
  }) :
      deidentifyConfig = pulumi.Input.asOptionalInput<GooglePrivacyDlpV2DeidentifyConfig>(deidentifyConfig),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      location = pulumi.Input.asOptionalInput<String>(location),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      templateId = pulumi.Input.asOptionalInput<String>(templateId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deidentifyConfig': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2DeidentifyConfig, Map<String, dynamic>>(deidentifyConfig, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'location': ?location,
      'organizationId': organizationId,
      'templateId': ?templateId,
    };
  }

  factory OrganizationsDeidentifyTemplateArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationsDeidentifyTemplateArgs(
      deidentifyConfig: map['deidentifyConfig'] == null ? null : GooglePrivacyDlpV2DeidentifyConfig.fromMap((map['deidentifyConfig'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      organizationId: map['organizationId'] as String,
      templateId: map['templateId'] == null ? null : map['templateId'] as String,
    );
  }
}

