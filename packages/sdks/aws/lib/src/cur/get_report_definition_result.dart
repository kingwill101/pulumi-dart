// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getReportDefinition.
class GetReportDefinitionResult {
  /// A list of additional artifacts.
  final List<String>? additionalArtifacts;
  /// A list of schema elements.
  final List<String>? additionalSchemaElements;
  /// Preferred format for report.
  final String? compression;
  /// Preferred compression format for report.
  final String? format;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// If true reports are updated after they have been finalized.
  final bool? refreshClosedReports;
  final String? reportName;
  /// Overwrite the previous version of each report or to deliver the report in addition to the previous versions.
  final String? reportVersioning;
  /// Name of customer S3 bucket.
  final String? s3Bucket;
  /// Preferred report path prefix.
  final String? s3Prefix;
  /// Region of customer S3 bucket.
  final String? s3Region;
  /// Map of key-value pairs assigned to the resource.
  final Map<String, String>? tags;
  /// Frequency on which report data are measured and displayed.
  final String? timeUnit;

  /// Creates a new [GetReportDefinitionResult].
  /// [additionalArtifacts] A list of additional artifacts.
  /// [additionalSchemaElements] A list of schema elements.
  /// [compression] Preferred format for report.
  /// [format] Preferred compression format for report.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [refreshClosedReports] If true reports are updated after they have been finalized.
  /// [reportName] Optional.
  /// [reportVersioning] Overwrite the previous version of each report or to deliver the report in addition to the previous versions.
  /// [s3Bucket] Name of customer S3 bucket.
  /// [s3Prefix] Preferred report path prefix.
  /// [s3Region] Region of customer S3 bucket.
  /// [tags] Map of key-value pairs assigned to the resource.
  /// [timeUnit] Frequency on which report data are measured and displayed.
  const GetReportDefinitionResult({
    this.additionalArtifacts,
    this.additionalSchemaElements,
    this.compression,
    this.format,
    this.id,
    this.refreshClosedReports,
    this.reportName,
    this.reportVersioning,
    this.s3Bucket,
    this.s3Prefix,
    this.s3Region,
    this.tags,
    this.timeUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalArtifacts': ?additionalArtifacts,
      'additionalSchemaElements': ?additionalSchemaElements,
      'compression': ?compression,
      'format': ?format,
      'id': ?id,
      'refreshClosedReports': ?refreshClosedReports,
      'reportName': ?reportName,
      'reportVersioning': ?reportVersioning,
      's3Bucket': ?s3Bucket,
      's3Prefix': ?s3Prefix,
      's3Region': ?s3Region,
      'tags': ?tags,
      'timeUnit': ?timeUnit,
    };
  }

  factory GetReportDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetReportDefinitionResult(
      additionalArtifacts: (() { final guardedValue = map['additionalArtifacts']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      additionalSchemaElements: (() { final guardedValue = map['additionalSchemaElements']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      compression: (() { final guardedValue = map['compression']; if (guardedValue == null) return null; return guardedValue as String; })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      refreshClosedReports: (() { final guardedValue = map['refreshClosedReports']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      reportName: (() { final guardedValue = map['reportName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reportVersioning: (() { final guardedValue = map['reportVersioning']; if (guardedValue == null) return null; return guardedValue as String; })(),
      s3Bucket: (() { final guardedValue = map['s3Bucket']; if (guardedValue == null) return null; return guardedValue as String; })(),
      s3Prefix: (() { final guardedValue = map['s3Prefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      s3Region: (() { final guardedValue = map['s3Region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      timeUnit: (() { final guardedValue = map['timeUnit']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
