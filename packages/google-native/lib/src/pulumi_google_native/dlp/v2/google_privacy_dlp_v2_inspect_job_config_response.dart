// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_privacy_dlp_v2_action_response.dart';
import 'google_privacy_dlp_v2_inspect_config_response.dart';
import 'google_privacy_dlp_v2_storage_config_response.dart';

/// Controls what and how to inspect for findings.
class GooglePrivacyDlpV2InspectJobConfigResponse {
  /// Actions to execute at the completion of the job.
  final List<GooglePrivacyDlpV2ActionResponse> actions;

  /// How and what to scan for.
  final GooglePrivacyDlpV2InspectConfigResponse inspectConfig;

  /// If provided, will be used as the default for all values in InspectConfig. `inspect_config` will be merged into the values persisted as part of the template.
  final String inspectTemplateName;

  /// The data to scan.
  final GooglePrivacyDlpV2StorageConfigResponse storageConfig;

  GooglePrivacyDlpV2InspectJobConfigResponse({
    required this.actions,
    required this.inspectConfig,
    required this.inspectTemplateName,
    required this.storageConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actions'] = Input.encodeList<GooglePrivacyDlpV2ActionResponse,
        Map<String, dynamic>>(actions, (value) => value.toMap());
    map['inspectConfig'] = inspectConfig.toMap();
    map['inspectTemplateName'] = inspectTemplateName;
    map['storageConfig'] = storageConfig.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2InspectJobConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2InspectJobConfigResponse(
      actions: Input.decodeList<GooglePrivacyDlpV2ActionResponse>(
          map['actions'],
          (value) => GooglePrivacyDlpV2ActionResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      inspectConfig: GooglePrivacyDlpV2InspectConfigResponse.fromMap(
          (map['inspectConfig'] as Map).cast<String, dynamic>()),
      inspectTemplateName: map['inspectTemplateName'] as String,
      storageConfig: GooglePrivacyDlpV2StorageConfigResponse.fromMap(
          (map['storageConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
