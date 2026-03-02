// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ReportDefinition resources.
class ReportDefinitionState {
  /// A list of additional artifacts. Valid values are: `REDSHIFT`, `QUICKSIGHT`, `ATHENA`. When ATHENA exists within additional_artifacts, no other artifact type can be declared and report_versioning must be `OVERWRITE_REPORT`.
  final pulumi.Input<List<String>>? additionalArtifacts;
  /// A list of schema elements. Valid values are: `RESOURCES`, `SPLIT_COST_ALLOCATION_DATA`, `MANUAL_DISCOUNT_COMPATIBILITY`.
  final pulumi.Input<List<String>>? additionalSchemaElements;
  /// The Amazon Resource Name (ARN) specifying the cur report.
  final pulumi.Input<String>? arn;
  /// Compression format for report. Valid values are: `GZIP`, `ZIP`, `Parquet`. If `Parquet` is used, then format must also be `Parquet`.
  final pulumi.Input<String>? compression;
  /// Format for report. Valid values are: `textORcsv`, `Parquet`. If `Parquet` is used, then Compression must also be `Parquet`.
  final pulumi.Input<String>? format;
  /// Set to true to update your reports after they have been finalized if AWS detects charges related to previous months.
  final pulumi.Input<bool>? refreshClosedReports;
  /// Unique name for the report. Must start with a number/letter and is case sensitive. Limited to 256 characters.
  final pulumi.Input<String>? reportName;
  /// Overwrite the previous version of each report or to deliver the report in addition to the previous versions. Valid values are: `CREATE_NEW_REPORT` and `OVERWRITE_REPORT`.
  final pulumi.Input<String>? reportVersioning;
  /// Name of the existing S3 bucket to hold generated reports.
  final pulumi.Input<String>? s3Bucket;
  /// Report path prefix. Limited to 256 characters. May be empty (`""`) but the resource can then not be modified via the AWS Console.
  final pulumi.Input<String>? s3Prefix;
  /// Region of the existing S3 bucket to hold generated reports.
  final pulumi.Input<String>? s3Region;
  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The frequency on which report data are measured and displayed.  Valid values are: `DAILY`, `HOURLY`, `MONTHLY`.
  final pulumi.Input<String>? timeUnit;

  /// Creates a new [ReportDefinitionState].
  /// [additionalArtifacts] A list of additional artifacts. Valid values are: `REDSHIFT`, `QUICKSIGHT`, `ATHENA`. When ATHENA exists within additional_artifacts, no other artifact type can be declared and report_versioning must be `OVERWRITE_REPORT`.
  /// [additionalSchemaElements] A list of schema elements. Valid values are: `RESOURCES`, `SPLIT_COST_ALLOCATION_DATA`, `MANUAL_DISCOUNT_COMPATIBILITY`.
  /// [arn] The Amazon Resource Name (ARN) specifying the cur report.
  /// [compression] Compression format for report. Valid values are: `GZIP`, `ZIP`, `Parquet`. If `Parquet` is used, then format must also be `Parquet`.
  /// [format] Format for report. Valid values are: `textORcsv`, `Parquet`. If `Parquet` is used, then Compression must also be `Parquet`.
  /// [refreshClosedReports] Set to true to update your reports after they have been finalized if AWS detects charges related to previous months.
  /// [reportName] Unique name for the report. Must start with a number/letter and is case sensitive. Limited to 256 characters.
  /// [reportVersioning] Overwrite the previous version of each report or to deliver the report in addition to the previous versions. Valid values are: `CREATE_NEW_REPORT` and `OVERWRITE_REPORT`.
  /// [s3Bucket] Name of the existing S3 bucket to hold generated reports.
  /// [s3Prefix] Report path prefix. Limited to 256 characters. May be empty (`""`) but the resource can then not be modified via the AWS Console.
  /// [s3Region] Region of the existing S3 bucket to hold generated reports.
  /// [tags] Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeUnit] The frequency on which report data are measured and displayed.  Valid values are: `DAILY`, `HOURLY`, `MONTHLY`.
  ReportDefinitionState({
    this.additionalArtifacts,
    this.additionalSchemaElements,
    this.arn,
    this.compression,
    this.format,
    this.refreshClosedReports,
    this.reportName,
    this.reportVersioning,
    this.s3Bucket,
    this.s3Prefix,
    this.s3Region,
    this.tags,
    this.tagsAll,
    this.timeUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalArtifacts': ?additionalArtifacts,
      'additionalSchemaElements': ?additionalSchemaElements,
      'arn': ?arn,
      'compression': ?compression,
      'format': ?format,
      'refreshClosedReports': ?refreshClosedReports,
      'reportName': ?reportName,
      'reportVersioning': ?reportVersioning,
      's3Bucket': ?s3Bucket,
      's3Prefix': ?s3Prefix,
      's3Region': ?s3Region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeUnit': ?timeUnit,
    };
  }

  factory ReportDefinitionState.fromMap(Map<String, dynamic> map) {
    return ReportDefinitionState(
      additionalArtifacts: map['additionalArtifacts'] == null ? null : (((map['additionalArtifacts'] as List).cast<String>()).input()).input(),
      additionalSchemaElements: map['additionalSchemaElements'] == null ? null : (((map['additionalSchemaElements'] as List).cast<String>()).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      compression: map['compression'] == null ? null : ((map['compression'] as String).input()).input(),
      format: map['format'] == null ? null : ((map['format'] as String).input()).input(),
      refreshClosedReports: map['refreshClosedReports'] == null ? null : ((map['refreshClosedReports'] as bool).input()).input(),
      reportName: map['reportName'] == null ? null : ((map['reportName'] as String).input()).input(),
      reportVersioning: map['reportVersioning'] == null ? null : ((map['reportVersioning'] as String).input()).input(),
      s3Bucket: map['s3Bucket'] == null ? null : ((map['s3Bucket'] as String).input()).input(),
      s3Prefix: map['s3Prefix'] == null ? null : ((map['s3Prefix'] as String).input()).input(),
      s3Region: map['s3Region'] == null ? null : ((map['s3Region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      timeUnit: map['timeUnit'] == null ? null : ((map['timeUnit'] as String).input()).input(),
    );
  }
}

