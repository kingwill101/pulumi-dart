// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getReportDefinition.
class GetReportDefinitionResult {
  /// A list of additional artifacts.
  final List<String> additionalArtifacts;

  /// A list of schema elements.
  final List<String> additionalSchemaElements;

  /// Preferred format for report.
  final String compression;

  /// Preferred compression format for report.
  final String format;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// If true reports are updated after they have been finalized.
  final bool refreshClosedReports;
  final String reportName;

  /// Overwrite the previous version of each report or to deliver the report in addition to the previous versions.
  final String reportVersioning;

  /// Name of customer S3 bucket.
  final String s3Bucket;

  /// Preferred report path prefix.
  final String s3Prefix;

  /// Region of customer S3 bucket.
  final String s3Region;

  /// Map of key-value pairs assigned to the resource.
  final Map<String, String> tags;

  /// Frequency on which report data are measured and displayed.
  final String timeUnit;

  /// Creates a new [GetReportDefinitionResult].
  /// [additionalArtifacts] A list of additional artifacts.
  /// [additionalSchemaElements] A list of schema elements.
  /// [compression] Preferred format for report.
  /// [format] Preferred compression format for report.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [refreshClosedReports] If true reports are updated after they have been finalized.
  /// [reportName] Required.
  /// [reportVersioning] Overwrite the previous version of each report or to deliver the report in addition to the previous versions.
  /// [s3Bucket] Name of customer S3 bucket.
  /// [s3Prefix] Preferred report path prefix.
  /// [s3Region] Region of customer S3 bucket.
  /// [tags] Map of key-value pairs assigned to the resource.
  /// [timeUnit] Frequency on which report data are measured and displayed.
  GetReportDefinitionResult({
    required this.additionalArtifacts,
    required this.additionalSchemaElements,
    required this.compression,
    required this.format,
    required this.id,
    required this.refreshClosedReports,
    required this.reportName,
    required this.reportVersioning,
    required this.s3Bucket,
    required this.s3Prefix,
    required this.s3Region,
    required this.tags,
    required this.timeUnit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['additionalArtifacts'] = additionalArtifacts;
    map['additionalSchemaElements'] = additionalSchemaElements;
    map['compression'] = compression;
    map['format'] = format;
    map['id'] = id;
    map['refreshClosedReports'] = refreshClosedReports;
    map['reportName'] = reportName;
    map['reportVersioning'] = reportVersioning;
    map['s3Bucket'] = s3Bucket;
    map['s3Prefix'] = s3Prefix;
    map['s3Region'] = s3Region;
    map['tags'] = tags;
    map['timeUnit'] = timeUnit;
    return map;
  }

  factory GetReportDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetReportDefinitionResult(
      additionalArtifacts: (map['additionalArtifacts'] as List).cast<String>(),
      additionalSchemaElements:
          (map['additionalSchemaElements'] as List).cast<String>(),
      compression: map['compression'] as String,
      format: map['format'] as String,
      id: map['id'] as String,
      refreshClosedReports: map['refreshClosedReports'] as bool,
      reportName: map['reportName'] as String,
      reportVersioning: map['reportVersioning'] as String,
      s3Bucket: map['s3Bucket'] as String,
      s3Prefix: map['s3Prefix'] as String,
      s3Region: map['s3Region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      timeUnit: map['timeUnit'] as String,
    );
  }
}
