// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ReportDefinition.
class ReportDefinitionArgs {
  /// A list of additional artifacts. Valid values are: `REDSHIFT`, `QUICKSIGHT`, `ATHENA`. When ATHENA exists within additional_artifacts, no other artifact type can be declared and report_versioning must be `OVERWRITE_REPORT`.
  final pulumi.Input<List<String>>? additionalArtifacts;

  /// A list of schema elements. Valid values are: `RESOURCES`, `SPLIT_COST_ALLOCATION_DATA`, `MANUAL_DISCOUNT_COMPATIBILITY`.
  final pulumi.Input<List<String>> additionalSchemaElements;

  /// Compression format for report. Valid values are: `GZIP`, `ZIP`, `Parquet`. If `Parquet` is used, then format must also be `Parquet`.
  final pulumi.Input<String> compression;

  /// Format for report. Valid values are: `textORcsv`, `Parquet`. If `Parquet` is used, then Compression must also be `Parquet`.
  final pulumi.Input<String> format;

  /// Set to true to update your reports after they have been finalized if AWS detects charges related to previous months.
  final pulumi.Input<bool>? refreshClosedReports;

  /// Unique name for the report. Must start with a number/letter and is case sensitive. Limited to 256 characters.
  final pulumi.Input<String> reportName;

  /// Overwrite the previous version of each report or to deliver the report in addition to the previous versions. Valid values are: `CREATE_NEW_REPORT` and `OVERWRITE_REPORT`.
  final pulumi.Input<String>? reportVersioning;

  /// Name of the existing S3 bucket to hold generated reports.
  final pulumi.Input<String> s3Bucket;

  /// Report path prefix. Limited to 256 characters. May be empty (`""`) but the resource can then not be modified via the AWS Console.
  final pulumi.Input<String> s3Prefix;

  /// Region of the existing S3 bucket to hold generated reports.
  final pulumi.Input<String> s3Region;

  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The frequency on which report data are measured and displayed.  Valid values are: `DAILY`, `HOURLY`, `MONTHLY`.
  final pulumi.Input<String> timeUnit;

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
      additionalArtifacts: pulumi.Input.asOptionalInput<List<String>>(
          map['additionalArtifacts']),
      additionalSchemaElements:
          pulumi.Input.asInput<List<String>>(map['additionalSchemaElements']),
      compression: pulumi.Input.asInput<String>(map['compression']),
      format: pulumi.Input.asInput<String>(map['format']),
      refreshClosedReports:
          pulumi.Input.asOptionalInput<bool>(map['refreshClosedReports']),
      reportName: pulumi.Input.asInput<String>(map['reportName']),
      reportVersioning:
          pulumi.Input.asOptionalInput<String>(map['reportVersioning']),
      s3Bucket: pulumi.Input.asInput<String>(map['s3Bucket']),
      s3Prefix: pulumi.Input.asInput<String>(map['s3Prefix']),
      s3Region: pulumi.Input.asInput<String>(map['s3Region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeUnit: pulumi.Input.asInput<String>(map['timeUnit']),
    );
  }
}
