// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_privacy_dlp_v2_action.dart';
import 'google_privacy_dlp_v2_inspect_config.dart';
import 'google_privacy_dlp_v2_storage_config.dart';

/// Controls what and how to inspect for findings.
class GooglePrivacyDlpV2InspectJobConfig {
  /// Actions to execute at the completion of the job.
  final List<GooglePrivacyDlpV2Action>? actions;

  /// How and what to scan for.
  final GooglePrivacyDlpV2InspectConfig? inspectConfig;

  /// If provided, will be used as the default for all values in InspectConfig. `inspect_config` will be merged into the values persisted as part of the template.
  final String? inspectTemplateName;

  /// The data to scan.
  final GooglePrivacyDlpV2StorageConfig? storageConfig;

  GooglePrivacyDlpV2InspectJobConfig({
    this.actions,
    this.inspectConfig,
    this.inspectTemplateName,
    this.storageConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionsValue = actions;
    if (actionsValue != null) {
      map['actions'] =
          Input.encodeList<GooglePrivacyDlpV2Action, Map<String, dynamic>>(
              actionsValue, (value) => value.toMap());
    }
    final inspectConfigValue = inspectConfig;
    if (inspectConfigValue != null) {
      map['inspectConfig'] = inspectConfigValue.toMap();
    }
    final inspectTemplateNameValue = inspectTemplateName;
    if (inspectTemplateNameValue != null) {
      map['inspectTemplateName'] = inspectTemplateNameValue;
    }
    final storageConfigValue = storageConfig;
    if (storageConfigValue != null) {
      map['storageConfig'] = storageConfigValue.toMap();
    }
    return map;
  }

  factory GooglePrivacyDlpV2InspectJobConfig.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2InspectJobConfig(
      actions: map['actions'] == null
          ? null
          : Input.decodeList<GooglePrivacyDlpV2Action>(
              map['actions'],
              (value) => GooglePrivacyDlpV2Action.fromMap(
                  (value as Map).cast<String, dynamic>())),
      inspectConfig: map['inspectConfig'] == null
          ? null
          : GooglePrivacyDlpV2InspectConfig.fromMap(
              (map['inspectConfig'] as Map).cast<String, dynamic>()),
      inspectTemplateName: map['inspectTemplateName'] == null
          ? null
          : map['inspectTemplateName'] as String,
      storageConfig: map['storageConfig'] == null
          ? null
          : GooglePrivacyDlpV2StorageConfig.fromMap(
              (map['storageConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
