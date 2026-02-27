// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_privacy_dlp_v2_value_response.dart';

/// Result of the numerical stats computation.
class GooglePrivacyDlpV2NumericalStatsResultResponse {
  /// Maximum value appearing in the column.
  final GooglePrivacyDlpV2ValueResponse maxValue;

  /// Minimum value appearing in the column.
  final GooglePrivacyDlpV2ValueResponse minValue;

  /// List of 99 values that partition the set of field values into 100 equal sized buckets.
  final List<GooglePrivacyDlpV2ValueResponse> quantileValues;

  GooglePrivacyDlpV2NumericalStatsResultResponse({
    required this.maxValue,
    required this.minValue,
    required this.quantileValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxValue'] = maxValue.toMap();
    map['minValue'] = minValue.toMap();
    map['quantileValues'] =
        Input.encodeList<GooglePrivacyDlpV2ValueResponse, Map<String, dynamic>>(
            quantileValues, (value) => value.toMap());
    return map;
  }

  factory GooglePrivacyDlpV2NumericalStatsResultResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2NumericalStatsResultResponse(
      maxValue: GooglePrivacyDlpV2ValueResponse.fromMap(
          (map['maxValue'] as Map).cast<String, dynamic>()),
      minValue: GooglePrivacyDlpV2ValueResponse.fromMap(
          (map['minValue'] as Map).cast<String, dynamic>()),
      quantileValues: Input.decodeList<GooglePrivacyDlpV2ValueResponse>(
          map['quantileValues'],
          (value) => GooglePrivacyDlpV2ValueResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
