// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_value.dart';

/// Bucket is represented as a range, along with replacement values.
class GooglePrivacyDlpV2Bucket {
  /// Upper bound of the range, exclusive; type must match min.
  final GooglePrivacyDlpV2Value? max;

  /// Lower bound of the range, inclusive. Type should be the same as max if used.
  final GooglePrivacyDlpV2Value? min;

  /// Replacement value for this bucket.
  final GooglePrivacyDlpV2Value replacementValue;

  /// Creates a new [GooglePrivacyDlpV2Bucket].
  /// [max] Upper bound of the range, exclusive; type must match min.
  /// [min] Lower bound of the range, inclusive. Type should be the same as max if used.
  /// [replacementValue] Replacement value for this bucket.
  GooglePrivacyDlpV2Bucket({
    this.max,
    this.min,
    required this.replacementValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxValue = max;
    if (maxValue != null) {
      map['max'] = maxValue.toMap();
    }
    final minValue = min;
    if (minValue != null) {
      map['min'] = minValue.toMap();
    }
    map['replacementValue'] = replacementValue.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2Bucket.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2Bucket(
      max: map['max'] == null
          ? null
          : GooglePrivacyDlpV2Value.fromMap(
              (map['max'] as Map).cast<String, dynamic>()),
      min: map['min'] == null
          ? null
          : GooglePrivacyDlpV2Value.fromMap(
              (map['min'] as Map).cast<String, dynamic>()),
      replacementValue: GooglePrivacyDlpV2Value.fromMap(
          (map['replacementValue'] as Map).cast<String, dynamic>()),
    );
  }
}
