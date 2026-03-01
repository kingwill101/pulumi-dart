// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_output_storage_config.dart';

/// If set, the detailed findings will be persisted to the specified OutputStorageConfig. Only a single instance of this action can be specified. Compatible with: Inspect, Risk
class GooglePrivacyDlpV2SaveFindings {
  /// Location to store findings outside of DLP.
  final GooglePrivacyDlpV2OutputStorageConfig? outputConfig;

  /// Creates a new [GooglePrivacyDlpV2SaveFindings].
  /// [outputConfig] Location to store findings outside of DLP.
  GooglePrivacyDlpV2SaveFindings({this.outputConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputConfig': ?outputConfig == null ? null : outputConfig!.toMap(),
    };
  }

  factory GooglePrivacyDlpV2SaveFindings.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2SaveFindings(
      outputConfig: map['outputConfig'] == null
          ? null
          : GooglePrivacyDlpV2OutputStorageConfig.fromMap(
              (map['outputConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
