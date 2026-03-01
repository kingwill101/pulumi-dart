// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_inspect_config_response.dart';

/// Result data returned by getOrganizationInspectTemplate.
class GetOrganizationInspectTemplateResult {
  /// The creation timestamp of an inspectTemplate.
  final String createTime;

  /// Short description (max 256 chars).
  final String description;

  /// Display name (max 256 chars).
  final String displayName;

  /// The core content of the template. Configuration of the scanning process.
  final GooglePrivacyDlpV2InspectConfigResponse inspectConfig;

  /// The template name. The template will have one of the following formats: `projects/PROJECT_ID/inspectTemplates/TEMPLATE_ID` OR `organizations/ORGANIZATION_ID/inspectTemplates/TEMPLATE_ID`;
  final String name;

  /// The last update timestamp of an inspectTemplate.
  final String updateTime;

  /// Creates a new [GetOrganizationInspectTemplateResult].
  /// [createTime] The creation timestamp of an inspectTemplate.
  /// [description] Short description (max 256 chars).
  /// [displayName] Display name (max 256 chars).
  /// [inspectConfig] The core content of the template. Configuration of the scanning process.
  /// [name] The template name. The template will have one of the following formats: `projects/PROJECT_ID/inspectTemplates/TEMPLATE_ID` OR `organizations/ORGANIZATION_ID/inspectTemplates/TEMPLATE_ID`;
  /// [updateTime] The last update timestamp of an inspectTemplate.
  GetOrganizationInspectTemplateResult({
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.inspectConfig,
    required this.name,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'displayName': displayName,
      'inspectConfig': inspectConfig.toMap(),
      'name': name,
      'updateTime': updateTime,
    };
  }

  factory GetOrganizationInspectTemplateResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetOrganizationInspectTemplateResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      inspectConfig: GooglePrivacyDlpV2InspectConfigResponse.fromMap(
        (map['inspectConfig'] as Map).cast<String, dynamic>(),
      ),
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
