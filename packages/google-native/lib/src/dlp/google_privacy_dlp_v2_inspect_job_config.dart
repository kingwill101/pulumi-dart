// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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

  /// Creates a new [GooglePrivacyDlpV2InspectJobConfig].
  /// [actions] Actions to execute at the completion of the job.
  /// [inspectConfig] How and what to scan for.
  /// [inspectTemplateName] If provided, will be used as the default for all values in InspectConfig. `inspect_config` will be merged into the values persisted as part of the template.
  /// [storageConfig] The data to scan.
  GooglePrivacyDlpV2InspectJobConfig({
    this.actions,
    this.inspectConfig,
    this.inspectTemplateName,
    this.storageConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions == null
          ? null
          : pulumi.Input.encodeList<
              GooglePrivacyDlpV2Action,
              Map<String, dynamic>
            >(actions!, (value) => value.toMap()),
      'inspectConfig': ?inspectConfig == null ? null : inspectConfig!.toMap(),
      'inspectTemplateName': ?inspectTemplateName,
      'storageConfig': ?storageConfig == null ? null : storageConfig!.toMap(),
    };
  }

  factory GooglePrivacyDlpV2InspectJobConfig.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2InspectJobConfig(
      actions: map['actions'] == null
          ? null
          : pulumi.Input.decodeList<GooglePrivacyDlpV2Action>(
              map['actions'],
              (value) => GooglePrivacyDlpV2Action.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      inspectConfig: map['inspectConfig'] == null
          ? null
          : GooglePrivacyDlpV2InspectConfig.fromMap(
              (map['inspectConfig'] as Map).cast<String, dynamic>(),
            ),
      inspectTemplateName: map['inspectTemplateName'] == null
          ? null
          : map['inspectTemplateName'] as String,
      storageConfig: map['storageConfig'] == null
          ? null
          : GooglePrivacyDlpV2StorageConfig.fromMap(
              (map['storageConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
