// ignore_for_file: unused_element, unnecessary_cast

/// Summary of what was modified during a transformation.
class GooglePrivacyDlpV2DeidentifyDataSourceStatsResponse {
  /// Number of successfully applied transformations.
  final String transformationCount;

  /// Number of errors encountered while trying to apply transformations.
  final String transformationErrorCount;

  /// Total size in bytes that were transformed in some way.
  final String transformedBytes;

  /// Creates a new [GooglePrivacyDlpV2DeidentifyDataSourceStatsResponse].
  /// [transformationCount] Number of successfully applied transformations.
  /// [transformationErrorCount] Number of errors encountered while trying to apply transformations.
  /// [transformedBytes] Total size in bytes that were transformed in some way.
  GooglePrivacyDlpV2DeidentifyDataSourceStatsResponse({
    required this.transformationCount,
    required this.transformationErrorCount,
    required this.transformedBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'transformationCount': transformationCount,
      'transformationErrorCount': transformationErrorCount,
      'transformedBytes': transformedBytes,
    };
  }

  factory GooglePrivacyDlpV2DeidentifyDataSourceStatsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2DeidentifyDataSourceStatsResponse(
      transformationCount: map['transformationCount'] as String,
      transformationErrorCount: map['transformationErrorCount'] as String,
      transformedBytes: map['transformedBytes'] as String,
    );
  }
}
