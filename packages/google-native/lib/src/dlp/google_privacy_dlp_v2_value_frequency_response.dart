// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_value_response.dart';

/// A value of a field, including its frequency.
class GooglePrivacyDlpV2ValueFrequencyResponse {
  /// How many times the value is contained in the field.
  final String count;

  /// A value contained in the field in question.
  final GooglePrivacyDlpV2ValueResponse value;

  /// Creates a new [GooglePrivacyDlpV2ValueFrequencyResponse].
  /// [count] How many times the value is contained in the field.
  /// [value] A value contained in the field in question.
  GooglePrivacyDlpV2ValueFrequencyResponse({
    required this.count,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'count': count, 'value': value.toMap()};
  }

  factory GooglePrivacyDlpV2ValueFrequencyResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2ValueFrequencyResponse(
      count: map['count'] as String,
      value: GooglePrivacyDlpV2ValueResponse.fromMap(
        (map['value'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
