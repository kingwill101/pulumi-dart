// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ReportDefinition.
class ReportDefinitionArgs {
  /// A list of additional artifacts. Valid values are: `REDSHIFT`, `QUICKSIGHT`, `ATHENA`. When ATHENA exists within additional_artifacts, no other artifact type can be declared and report_versioning must be `OVERWRITE_REPORT`.
  final Input<List<String>>? additionalArtifacts;

  /// A list of schema elements. Valid values are: `RESOURCES`, `SPLIT_COST_ALLOCATION_DATA`, `MANUAL_DISCOUNT_COMPATIBILITY`.
  final Input<List<String>> additionalSchemaElements;

  /// Compression format for report. Valid values are: `GZIP`, `ZIP`, `Parquet`. If `Parquet` is used, then format must also be `Parquet`.
  final Input<String> compression;

  /// Format for report. Valid values are: `textORcsv`, `Parquet`. If `Parquet` is used, then Compression must also be `Parquet`.
  final Input<String> format;

  /// Set to true to update your reports after they have been finalized if AWS detects charges related to previous months.
  final Input<bool>? refreshClosedReports;

  /// Unique name for the report. Must start with a number/letter and is case sensitive. Limited to 256 characters.
  final Input<String> reportName;

  /// Overwrite the previous version of each report or to deliver the report in addition to the previous versions. Valid values are: `CREATE_NEW_REPORT` and `OVERWRITE_REPORT`.
  final Input<String>? reportVersioning;

  /// Name of the existing S3 bucket to hold generated reports.
  final Input<String> s3Bucket;

  /// Report path prefix. Limited to 256 characters. May be empty (`""`) but the resource can then not be modified via the AWS Console.
  final Input<String> s3Prefix;

  /// Region of the existing S3 bucket to hold generated reports.
  final Input<String> s3Region;

  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The frequency on which report data are measured and displayed.  Valid values are: `DAILY`, `HOURLY`, `MONTHLY`.
  final Input<String> timeUnit;

  ReportDefinitionArgs({
    this.additionalArtifacts,
    required this.additionalSchemaElements,
    required this.compression,
    required this.format,
    this.refreshClosedReports,
    required this.reportName,
    this.reportVersioning,
    required this.s3Bucket,
    required this.s3Prefix,
    required this.s3Region,
    this.tags,
    required this.timeUnit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalArtifactsValue = additionalArtifacts;
    if (additionalArtifactsValue != null) {
      map['additionalArtifacts'] = additionalArtifactsValue;
    }
    map['additionalSchemaElements'] = additionalSchemaElements;
    map['compression'] = compression;
    map['format'] = format;
    final refreshClosedReportsValue = refreshClosedReports;
    if (refreshClosedReportsValue != null) {
      map['refreshClosedReports'] = refreshClosedReportsValue;
    }
    map['reportName'] = reportName;
    final reportVersioningValue = reportVersioning;
    if (reportVersioningValue != null) {
      map['reportVersioning'] = reportVersioningValue;
    }
    map['s3Bucket'] = s3Bucket;
    map['s3Prefix'] = s3Prefix;
    map['s3Region'] = s3Region;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['timeUnit'] = timeUnit;
    return map;
  }

  factory ReportDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return ReportDefinitionArgs(
      additionalArtifacts:
          Input.asOptionalInput<List<String>>(map['additionalArtifacts']),
      additionalSchemaElements:
          Input.asInput<List<String>>(map['additionalSchemaElements']),
      compression: Input.asInput<String>(map['compression']),
      format: Input.asInput<String>(map['format']),
      refreshClosedReports:
          Input.asOptionalInput<bool>(map['refreshClosedReports']),
      reportName: Input.asInput<String>(map['reportName']),
      reportVersioning: Input.asOptionalInput<String>(map['reportVersioning']),
      s3Bucket: Input.asInput<String>(map['s3Bucket']),
      s3Prefix: Input.asInput<String>(map['s3Prefix']),
      s3Region: Input.asInput<String>(map['s3Region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeUnit: Input.asInput<String>(map['timeUnit']),
    );
  }
}
