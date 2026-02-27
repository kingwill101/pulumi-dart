import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_definition_args.dart';

/// Manages Cost and Usage Report Definitions.
///
/// > *NOTE:* The AWS Cost and Usage Report service is only available in `us-east-1` currently.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Report Definitions using the `report_name`. For example:
///
/// ```sh
/// $ pulumi import aws:cur/reportDefinition:ReportDefinition example_cur_report_definition example-cur-report-definition
/// ```
class ReportDefinition extends pulumi.CustomResource {
  /// A list of additional artifacts. Valid values are: `REDSHIFT`, `QUICKSIGHT`, `ATHENA`. When ATHENA exists within additional_artifacts, no other artifact type can be declared and report_versioning must be `OVERWRITE_REPORT`.
  late final pulumi.Output<List<String>?> additionalArtifacts;

  /// A list of schema elements. Valid values are: `RESOURCES`, `SPLIT_COST_ALLOCATION_DATA`, `MANUAL_DISCOUNT_COMPATIBILITY`.
  late final pulumi.Output<List<String>> additionalSchemaElements;

  /// The Amazon Resource Name (ARN) specifying the cur report.
  late final pulumi.Output<String> arn;

  /// Compression format for report. Valid values are: `GZIP`, `ZIP`, `Parquet`. If `Parquet` is used, then format must also be `Parquet`.
  late final pulumi.Output<String> compression;

  /// Format for report. Valid values are: `textORcsv`, `Parquet`. If `Parquet` is used, then Compression must also be `Parquet`.
  late final pulumi.Output<String> format;

  /// Set to true to update your reports after they have been finalized if AWS detects charges related to previous months.
  late final pulumi.Output<bool?> refreshClosedReports;

  /// Unique name for the report. Must start with a number/letter and is case sensitive. Limited to 256 characters.
  late final pulumi.Output<String> reportName;

  /// Overwrite the previous version of each report or to deliver the report in addition to the previous versions. Valid values are: `CREATE_NEW_REPORT` and `OVERWRITE_REPORT`.
  late final pulumi.Output<String?> reportVersioning;

  /// Name of the existing S3 bucket to hold generated reports.
  late final pulumi.Output<String> s3Bucket;

  /// Report path prefix. Limited to 256 characters. May be empty (`""`) but the resource can then not be modified via the AWS Console.
  late final pulumi.Output<String> s3Prefix;

  /// Region of the existing S3 bucket to hold generated reports.
  late final pulumi.Output<String> s3Region;

  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The frequency on which report data are measured and displayed.  Valid values are: `DAILY`, `HOURLY`, `MONTHLY`.
  late final pulumi.Output<String> timeUnit;

  ReportDefinition(
    String name, {
    ReportDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cur/reportDefinition:ReportDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalArtifacts =
        registerOutput<List<String>?>('additionalArtifacts');
    this.additionalSchemaElements =
        registerOutput<List<String>>('additionalSchemaElements');
    this.arn = registerOutput<String>('arn');
    this.compression = registerOutput<String>('compression');
    this.format = registerOutput<String>('format');
    this.refreshClosedReports = registerOutput<bool?>('refreshClosedReports');
    this.reportName = registerOutput<String>('reportName');
    this.reportVersioning = registerOutput<String?>('reportVersioning');
    this.s3Bucket = registerOutput<String>('s3Bucket');
    this.s3Prefix = registerOutput<String>('s3Prefix');
    this.s3Region = registerOutput<String>('s3Region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeUnit = registerOutput<String>('timeUnit');
  }
}
