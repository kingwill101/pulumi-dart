// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cur_report_definition_report_definition_args_doc}
/// The set of arguments for ReportDefinition.
/// {@endtemplate}
/// {@macro pulumi_cur_report_definition_report_definition_args_doc}
class ReportDefinitionArgs {
  /// A list of additional artifacts. Valid values are: `REDSHIFT`, `QUICKSIGHT`, `ATHENA`. When ATHENA exists within additional_artifacts, no other artifact type can be declared and reportVersioning must be `OVERWRITE_REPORT`.
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
  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The frequency on which report data are measured and displayed.  Valid values are: `DAILY`, `HOURLY`, `MONTHLY`.
  final pulumi.Input<String> timeUnit;

  /// Creates a new [ReportDefinitionArgs].
  /// [additionalArtifacts] A list of additional artifacts. Valid values are: `REDSHIFT`, `QUICKSIGHT`, `ATHENA`. When ATHENA exists within additional_artifacts, no other artifact type can be declared and reportVersioning must be `OVERWRITE_REPORT`.
  /// [additionalSchemaElements] A list of schema elements. Valid values are: `RESOURCES`, `SPLIT_COST_ALLOCATION_DATA`, `MANUAL_DISCOUNT_COMPATIBILITY`.
  /// [compression] Compression format for report. Valid values are: `GZIP`, `ZIP`, `Parquet`. If `Parquet` is used, then format must also be `Parquet`.
  /// [format] Format for report. Valid values are: `textORcsv`, `Parquet`. If `Parquet` is used, then Compression must also be `Parquet`.
  /// [refreshClosedReports] Set to true to update your reports after they have been finalized if AWS detects charges related to previous months.
  /// [reportName] Unique name for the report. Must start with a number/letter and is case sensitive. Limited to 256 characters.
  /// [reportVersioning] Overwrite the previous version of each report or to deliver the report in addition to the previous versions. Valid values are: `CREATE_NEW_REPORT` and `OVERWRITE_REPORT`.
  /// [s3Bucket] Name of the existing S3 bucket to hold generated reports.
  /// [s3Prefix] Report path prefix. Limited to 256 characters. May be empty (`""`) but the resource can then not be modified via the AWS Console.
  /// [s3Region] Region of the existing S3 bucket to hold generated reports.
  /// [tags] Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeUnit] The frequency on which report data are measured and displayed.  Valid values are: `DAILY`, `HOURLY`, `MONTHLY`.
  const ReportDefinitionArgs({
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
    return <String, dynamic>{
      'additionalArtifacts': ?additionalArtifacts,
      'additionalSchemaElements': additionalSchemaElements,
      'compression': compression,
      'format': format,
      'refreshClosedReports': ?refreshClosedReports,
      'reportName': reportName,
      'reportVersioning': ?reportVersioning,
      's3Bucket': s3Bucket,
      's3Prefix': s3Prefix,
      's3Region': s3Region,
      'tags': ?tags,
      'timeUnit': timeUnit,
    };
  }

  factory ReportDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return ReportDefinitionArgs(
      additionalArtifacts: (() { final guardedValue = map['additionalArtifacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      additionalSchemaElements: pulumi.Input.fromValue((map['additionalSchemaElements'] as List).cast<String>()),
      compression: pulumi.Input.fromValue(map['compression'] as String),
      format: pulumi.Input.fromValue(map['format'] as String),
      refreshClosedReports: (() { final guardedValue = map['refreshClosedReports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      reportName: pulumi.Input.fromValue(map['reportName'] as String),
      reportVersioning: (() { final guardedValue = map['reportVersioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Bucket: pulumi.Input.fromValue(map['s3Bucket'] as String),
      s3Prefix: pulumi.Input.fromValue(map['s3Prefix'] as String),
      s3Region: pulumi.Input.fromValue(map['s3Region'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeUnit: pulumi.Input.fromValue(map['timeUnit'] as String),
    );
  }
}
