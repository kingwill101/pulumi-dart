// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cur_report_definition_report_definition_args_doc}
/// The set of arguments for ReportDefinition.
/// {@endtemplate}
/// {@macro pulumi_cur_report_definition_report_definition_args_doc}
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

  /// Creates a new [ReportDefinitionArgs].
  /// [additionalArtifacts] A list of additional artifacts. Valid values are: `REDSHIFT`, `QUICKSIGHT`, `ATHENA`. When ATHENA exists within additional_artifacts, no other artifact type can be declared and report_versioning must be `OVERWRITE_REPORT`.
  /// [additionalSchemaElements] A list of schema elements. Valid values are: `RESOURCES`, `SPLIT_COST_ALLOCATION_DATA`, `MANUAL_DISCOUNT_COMPATIBILITY`.
  /// [compression] Compression format for report. Valid values are: `GZIP`, `ZIP`, `Parquet`. If `Parquet` is used, then format must also be `Parquet`.
  /// [format] Format for report. Valid values are: `textORcsv`, `Parquet`. If `Parquet` is used, then Compression must also be `Parquet`.
  /// [refreshClosedReports] Set to true to update your reports after they have been finalized if AWS detects charges related to previous months.
  /// [reportName] Unique name for the report. Must start with a number/letter and is case sensitive. Limited to 256 characters.
  /// [reportVersioning] Overwrite the previous version of each report or to deliver the report in addition to the previous versions. Valid values are: `CREATE_NEW_REPORT` and `OVERWRITE_REPORT`.
  /// [s3Bucket] Name of the existing S3 bucket to hold generated reports.
  /// [s3Prefix] Report path prefix. Limited to 256 characters. May be empty (`""`) but the resource can then not be modified via the AWS Console.
  /// [s3Region] Region of the existing S3 bucket to hold generated reports.
  /// [tags] Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeUnit] The frequency on which report data are measured and displayed.  Valid values are: `DAILY`, `HOURLY`, `MONTHLY`.
  ReportDefinitionArgs({
    List<String>? additionalArtifacts,
    required List<String> additionalSchemaElements,
    required String compression,
    required String format,
    bool? refreshClosedReports,
    required String reportName,
    String? reportVersioning,
    required String s3Bucket,
    required String s3Prefix,
    required String s3Region,
    Map<String, String>? tags,
    required String timeUnit,
  }) : additionalArtifacts = pulumi.Input.asOptionalInput<List<String>>(
         additionalArtifacts,
       ),
       additionalSchemaElements = pulumi.Input.asInput<List<String>>(
         additionalSchemaElements,
       ),
       compression = pulumi.Input.asInput<String>(compression),
       format = pulumi.Input.asInput<String>(format),
       refreshClosedReports = pulumi.Input.asOptionalInput<bool>(
         refreshClosedReports,
       ),
       reportName = pulumi.Input.asInput<String>(reportName),
       reportVersioning = pulumi.Input.asOptionalInput<String>(
         reportVersioning,
       ),
       s3Bucket = pulumi.Input.asInput<String>(s3Bucket),
       s3Prefix = pulumi.Input.asInput<String>(s3Prefix),
       s3Region = pulumi.Input.asInput<String>(s3Region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       timeUnit = pulumi.Input.asInput<String>(timeUnit);

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
      additionalArtifacts: map['additionalArtifacts'] == null
          ? null
          : (map['additionalArtifacts'] as List).cast<String>(),
      additionalSchemaElements: (map['additionalSchemaElements'] as List)
          .cast<String>(),
      compression: map['compression'] as String,
      format: map['format'] as String,
      refreshClosedReports: map['refreshClosedReports'] == null
          ? null
          : map['refreshClosedReports'] as bool,
      reportName: map['reportName'] as String,
      reportVersioning: map['reportVersioning'] == null
          ? null
          : map['reportVersioning'] as String,
      s3Bucket: map['s3Bucket'] as String,
      s3Prefix: map['s3Prefix'] as String,
      s3Region: map['s3Region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timeUnit: map['timeUnit'] as String,
    );
  }
}
