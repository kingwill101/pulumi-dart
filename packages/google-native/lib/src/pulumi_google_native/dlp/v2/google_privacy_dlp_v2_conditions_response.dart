// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_privacy_dlp_v2_condition_response.dart';

/// A collection of conditions.
class GooglePrivacyDlpV2ConditionsResponse {
  /// A collection of conditions.
  final List<GooglePrivacyDlpV2ConditionResponse> conditions;

  GooglePrivacyDlpV2ConditionsResponse({
    required this.conditions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conditions'] = Input.encodeList<GooglePrivacyDlpV2ConditionResponse,
        Map<String, dynamic>>(conditions, (value) => value.toMap());
    return map;
  }

  factory GooglePrivacyDlpV2ConditionsResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ConditionsResponse(
      conditions: Input.decodeList<GooglePrivacyDlpV2ConditionResponse>(
          map['conditions'],
          (value) => GooglePrivacyDlpV2ConditionResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
