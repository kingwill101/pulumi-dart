// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_value_response.dart';

/// Bucket is represented as a range, along with replacement values.
class GooglePrivacyDlpV2BucketResponse {
  /// Upper bound of the range, exclusive; type must match min.
  final GooglePrivacyDlpV2ValueResponse max;
  /// Lower bound of the range, inclusive. Type should be the same as max if used.
  final GooglePrivacyDlpV2ValueResponse min;
  /// Replacement value for this bucket.
  final GooglePrivacyDlpV2ValueResponse replacementValue;

  /// Creates a new [GooglePrivacyDlpV2BucketResponse].
  /// [max] Upper bound of the range, exclusive; type must match min.
  /// [min] Lower bound of the range, inclusive. Type should be the same as max if used.
  /// [replacementValue] Replacement value for this bucket.
  GooglePrivacyDlpV2BucketResponse({
    required this.max,
    required this.min,
    required this.replacementValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max.toMap(),
      'min': min.toMap(),
      'replacementValue': replacementValue.toMap(),
    };
  }

  factory GooglePrivacyDlpV2BucketResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2BucketResponse(
      max: GooglePrivacyDlpV2ValueResponse.fromMap((map['max'] as Map).cast<String, dynamic>()),
      min: GooglePrivacyDlpV2ValueResponse.fromMap((map['min'] as Map).cast<String, dynamic>()),
      replacementValue: GooglePrivacyDlpV2ValueResponse.fromMap((map['replacementValue'] as Map).cast<String, dynamic>()),
    );
  }
}

