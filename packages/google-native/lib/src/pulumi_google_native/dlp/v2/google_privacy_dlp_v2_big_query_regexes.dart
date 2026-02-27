// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_big_query_regex.dart';

/// A collection of regular expressions to determine what tables to match against.
class GooglePrivacyDlpV2BigQueryRegexes {
  /// A single BigQuery regular expression pattern to match against one or more tables, datasets, or projects that contain BigQuery tables.
  final List<GooglePrivacyDlpV2BigQueryRegex>? patterns;

  GooglePrivacyDlpV2BigQueryRegexes({
    this.patterns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final patternsValue = patterns;
    if (patternsValue != null) {
      map['patterns'] = pulumi.Input.encodeList<GooglePrivacyDlpV2BigQueryRegex,
          Map<String, dynamic>>(patternsValue, (value) => value.toMap());
    }
    return map;
  }

  factory GooglePrivacyDlpV2BigQueryRegexes.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2BigQueryRegexes(
      patterns: map['patterns'] == null
          ? null
          : pulumi.Input.decodeList<GooglePrivacyDlpV2BigQueryRegex>(
              map['patterns'],
              (value) => GooglePrivacyDlpV2BigQueryRegex.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
