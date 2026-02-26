// ignore_for_file: unused_element, unnecessary_cast

/// Summary of what was modified during a transformation.
class GooglePrivacyDlpV2DeidentifyDataSourceStatsResponse {
  /// Number of successfully applied transformations.
  final String transformationCount;

  /// Number of errors encountered while trying to apply transformations.
  final String transformationErrorCount;

  /// Total size in bytes that were transformed in some way.
  final String transformedBytes;

  GooglePrivacyDlpV2DeidentifyDataSourceStatsResponse({
    required this.transformationCount,
    required this.transformationErrorCount,
    required this.transformedBytes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['transformationCount'] = transformationCount;
    map['transformationErrorCount'] = transformationErrorCount;
    map['transformedBytes'] = transformedBytes;
    return map;
  }

  factory GooglePrivacyDlpV2DeidentifyDataSourceStatsResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DeidentifyDataSourceStatsResponse(
      transformationCount: map['transformationCount'] as String,
      transformationErrorCount: map['transformationErrorCount'] as String,
      transformedBytes: map['transformedBytes'] as String,
    );
  }
}
