// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_value_response.dart';

/// Replace each input value with a given `Value`.
class GooglePrivacyDlpV2ReplaceValueConfigResponse {
  /// Value to replace it with.
  final GooglePrivacyDlpV2ValueResponse newValue;

  GooglePrivacyDlpV2ReplaceValueConfigResponse({
    required this.newValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['newValue'] = newValue.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2ReplaceValueConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ReplaceValueConfigResponse(
      newValue: GooglePrivacyDlpV2ValueResponse.fromMap(
          (map['newValue'] as Map).cast<String, dynamic>()),
    );
  }
}
