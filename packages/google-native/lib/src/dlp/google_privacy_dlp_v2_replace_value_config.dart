// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_value.dart';

/// Replace each input value with a given `Value`.
class GooglePrivacyDlpV2ReplaceValueConfig {
  /// Value to replace it with.
  final GooglePrivacyDlpV2Value? newValue;

  /// Creates a new [GooglePrivacyDlpV2ReplaceValueConfig].
  /// [newValue] Value to replace it with.
  GooglePrivacyDlpV2ReplaceValueConfig({
    this.newValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'newValue': ?newValue == null ? null : newValue!.toMap(),
    };
  }

  factory GooglePrivacyDlpV2ReplaceValueConfig.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ReplaceValueConfig(
      newValue: map['newValue'] == null ? null : GooglePrivacyDlpV2Value.fromMap((map['newValue'] as Map).cast<String, dynamic>()),
    );
  }
}

