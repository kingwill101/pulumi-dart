// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_privacy_dlp_v2_big_query_regex_response.dart';

/// A collection of regular expressions to determine what tables to match against.
class GooglePrivacyDlpV2BigQueryRegexesResponse {
  /// A single BigQuery regular expression pattern to match against one or more tables, datasets, or projects that contain BigQuery tables.
  final List<GooglePrivacyDlpV2BigQueryRegexResponse> patterns;

  GooglePrivacyDlpV2BigQueryRegexesResponse({
    required this.patterns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['patterns'] = Input.encodeList<GooglePrivacyDlpV2BigQueryRegexResponse,
        Map<String, dynamic>>(patterns, (value) => value.toMap());
    return map;
  }

  factory GooglePrivacyDlpV2BigQueryRegexesResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2BigQueryRegexesResponse(
      patterns: Input.decodeList<GooglePrivacyDlpV2BigQueryRegexResponse>(
          map['patterns'],
          (value) => GooglePrivacyDlpV2BigQueryRegexResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
