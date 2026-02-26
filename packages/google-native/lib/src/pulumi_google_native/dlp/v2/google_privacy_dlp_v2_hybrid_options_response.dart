// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_table_options_response.dart';

/// Configuration to control jobs where the content being inspected is outside of Google Cloud Platform.
class GooglePrivacyDlpV2HybridOptionsResponse {
  /// A short description of where the data is coming from. Will be stored once in the job. 256 max length.
  final String description;

  /// To organize findings, these labels will be added to each finding. Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`. Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`. No more than 10 labels can be associated with a given finding. Examples: * `"environment" : "production"` * `"pipeline" : "etl"`
  final Map<String, String> labels;

  /// These are labels that each inspection request must include within their 'finding_labels' map. Request may contain others, but any missing one of these will be rejected. Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`. No more than 10 keys can be required.
  final List<String> requiredFindingLabelKeys;

  /// If the container is a table, additional information to make findings meaningful such as the columns that are primary keys.
  final GooglePrivacyDlpV2TableOptionsResponse tableOptions;

  GooglePrivacyDlpV2HybridOptionsResponse({
    required this.description,
    required this.labels,
    required this.requiredFindingLabelKeys,
    required this.tableOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['labels'] = labels;
    map['requiredFindingLabelKeys'] = requiredFindingLabelKeys;
    map['tableOptions'] = tableOptions.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2HybridOptionsResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2HybridOptionsResponse(
      description: map['description'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      requiredFindingLabelKeys:
          (map['requiredFindingLabelKeys'] as List).cast<String>(),
      tableOptions: GooglePrivacyDlpV2TableOptionsResponse.fromMap(
          (map['tableOptions'] as Map).cast<String, dynamic>()),
    );
  }
}
