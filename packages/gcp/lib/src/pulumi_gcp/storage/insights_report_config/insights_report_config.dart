import 'package:pulumi/pulumi.dart' as pulumi;
import '../insights_report_config_csv_options/insights_report_config_csv_options.dart';
import '../insights_report_config_frequency_options/insights_report_config_frequency_options.dart';
import '../insights_report_config_object_metadata_report_options/insights_report_config_object_metadata_report_options.dart';
import 'insights_report_config_args.dart';

/// Represents an inventory report configuration.
///
///
/// To get more information about ReportConfig, see:
///
/// * [API documentation](https://cloud.google.com/storage/docs/json_api/v1/reportConfig)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/storage/docs/insights/using-storage-insights)
///
/// ## Example Usage
///
/// ### Storage Insights Report Config
///
///
///
///
/// ## Import
///
/// ReportConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/reportConfigs/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, ReportConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:storage/insightsReportConfig:InsightsReportConfig default projects/{{project}}/locations/{{location}}/reportConfigs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:storage/insightsReportConfig:InsightsReportConfig default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:storage/insightsReportConfig:InsightsReportConfig default {{location}}/{{name}}
/// ```
class InsightsReportConfig extends pulumi.CustomResource {
  /// Options for configuring the format of the inventory report CSV file.
  /// Structure is documented below.
  late final pulumi.Output<InsightsReportConfigCsvOptions?> csvOptions;

  /// The editable display name of the inventory report configuration. Has a limit of 256 characters. Can be empty.
  late final pulumi.Output<String?> displayName;

  /// If set, all the inventory report details associated with this report configuration are deleted.
  late final pulumi.Output<bool?> forceDestroy;

  /// Options for configuring how inventory reports are generated.
  /// Structure is documented below.
  late final pulumi.Output<InsightsReportConfigFrequencyOptions?>
      frequencyOptions;

  /// The location of the ReportConfig. The source and destination buckets specified in the ReportConfig
  /// must be in the same location.
  late final pulumi.Output<String> location;

  /// The UUID of the inventory report configuration.
  late final pulumi.Output<String> name;

  /// Options for including metadata in an inventory report.
  /// Structure is documented below.
  late final pulumi.Output<InsightsReportConfigObjectMetadataReportOptions?>
      objectMetadataReportOptions;

  /// An option for outputting inventory reports as parquet files.
  late final pulumi.Output<Map<String, dynamic>?> parquetOptions;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  InsightsReportConfig(
    String name, {
    InsightsReportConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/insightsReportConfig:InsightsReportConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.csvOptions =
        registerOutput<InsightsReportConfigCsvOptions?>('csvOptions');
    this.displayName = registerOutput<String?>('displayName');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.frequencyOptions =
        registerOutput<InsightsReportConfigFrequencyOptions?>(
            'frequencyOptions');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.objectMetadataReportOptions =
        registerOutput<InsightsReportConfigObjectMetadataReportOptions?>(
            'objectMetadataReportOptions');
    this.parquetOptions =
        registerOutput<Map<String, dynamic>?>('parquetOptions');
    this.project = registerOutput<String>('project');
  }
}
