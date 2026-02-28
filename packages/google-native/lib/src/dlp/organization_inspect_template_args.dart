// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_inspect_config.dart';

/// {@template pulumi_dlp_v2_organization_inspect_template_args_doc}
/// The set of arguments for OrganizationInspectTemplate.
/// {@endtemplate}
/// {@macro pulumi_dlp_v2_organization_inspect_template_args_doc}
class OrganizationInspectTemplateArgs {
  /// Short description (max 256 chars).
  final pulumi.Input<String>? description;
  /// Display name (max 256 chars).
  final pulumi.Input<String>? displayName;
  /// The core content of the template. Configuration of the scanning process.
  final pulumi.Input<GooglePrivacyDlpV2InspectConfig>? inspectConfig;
  /// Deprecated. This field has no effect.
  final pulumi.Input<String>? location;
  final pulumi.Input<String> organizationId;
  /// The template id can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`. The maximum length is 100 characters. Can be empty to allow the system to generate one.
  final pulumi.Input<String>? templateId;

  /// Creates a new [OrganizationInspectTemplateArgs].
  /// [description] Short description (max 256 chars).
  /// [displayName] Display name (max 256 chars).
  /// [inspectConfig] The core content of the template. Configuration of the scanning process.
  /// [location] Deprecated. This field has no effect.
  /// [organizationId] Required.
  /// [templateId] The template id can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`. The maximum length is 100 characters. Can be empty to allow the system to generate one.
  OrganizationInspectTemplateArgs({
    String? description,
    String? displayName,
    GooglePrivacyDlpV2InspectConfig? inspectConfig,
    String? location,
    required String organizationId,
    String? templateId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      inspectConfig = pulumi.Input.asOptionalInput<GooglePrivacyDlpV2InspectConfig>(inspectConfig),
      location = pulumi.Input.asOptionalInput<String>(location),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      templateId = pulumi.Input.asOptionalInput<String>(templateId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'inspectConfig': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2InspectConfig, Map<String, dynamic>>(inspectConfig, (value) => value.toMap()),
      'location': ?location,
      'organizationId': organizationId,
      'templateId': ?templateId,
    };
  }

  factory OrganizationInspectTemplateArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationInspectTemplateArgs(
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      inspectConfig: map['inspectConfig'] == null ? null : GooglePrivacyDlpV2InspectConfig.fromMap((map['inspectConfig'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      organizationId: map['organizationId'] as String,
      templateId: map['templateId'] == null ? null : map['templateId'] as String,
    );
  }
}

