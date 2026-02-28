// ignore_for_file: unused_element, unnecessary_cast

class InsightsReportConfigObjectMetadataReportOptionsStorageFilters {
  /// The filter to use when specifying which bucket to generate inventory reports for.
  final String? bucket;

  /// Creates a new [InsightsReportConfigObjectMetadataReportOptionsStorageFilters].
  /// [bucket] The filter to use when specifying which bucket to generate inventory reports for.
  InsightsReportConfigObjectMetadataReportOptionsStorageFilters({
    this.bucket,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketValue = bucket;
    if (bucketValue != null) {
      map['bucket'] = bucketValue;
    }
    return map;
  }

  factory InsightsReportConfigObjectMetadataReportOptionsStorageFilters.fromMap(
      Map<String, dynamic> map) {
    return InsightsReportConfigObjectMetadataReportOptionsStorageFilters(
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
    );
  }
}
