// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'insights_report_config_csv_options.dart';
import 'insights_report_config_frequency_options.dart';
import 'insights_report_config_object_metadata_report_options.dart';

/// {@template pulumi_storage_insights_report_config_insights_report_config_args_doc}
/// The set of arguments for InsightsReportConfig.
/// {@endtemplate}
/// {@macro pulumi_storage_insights_report_config_insights_report_config_args_doc}
class InsightsReportConfigArgs {
  /// Options for configuring the format of the inventory report CSV file.
  /// Structure is documented below.
  final pulumi.Input<InsightsReportConfigCsvOptions>? csvOptions;

  /// The editable display name of the inventory report configuration. Has a limit of 256 characters. Can be empty.
  final pulumi.Input<String>? displayName;

  /// If set, all the inventory report details associated with this report configuration are deleted.
  final pulumi.Input<bool>? forceDestroy;

  /// Options for configuring how inventory reports are generated.
  /// Structure is documented below.
  final pulumi.Input<InsightsReportConfigFrequencyOptions>? frequencyOptions;

  /// The location of the ReportConfig. The source and destination buckets specified in the ReportConfig
  /// must be in the same location.
  final pulumi.Input<String> location;

  /// Options for including metadata in an inventory report.
  /// Structure is documented below.
  final pulumi.Input<InsightsReportConfigObjectMetadataReportOptions>?
  objectMetadataReportOptions;

  /// An option for outputting inventory reports as parquet files.
  final pulumi.Input<Map<String, dynamic>>? parquetOptions;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [InsightsReportConfigArgs].
  /// [csvOptions] Options for configuring the format of the inventory report CSV file.
  /// [displayName] The editable display name of the inventory report configuration. Has a limit of 256 characters. Can be empty.
  /// [forceDestroy] If set, all the inventory report details associated with this report configuration are deleted.
  /// [frequencyOptions] Options for configuring how inventory reports are generated.
  /// [location] The location of the ReportConfig. The source and destination buckets specified in the ReportConfig
  /// [objectMetadataReportOptions] Options for including metadata in an inventory report.
  /// [parquetOptions] An option for outputting inventory reports as parquet files.
  /// [project] The ID of the project in which the resource belongs.
  InsightsReportConfigArgs({
    InsightsReportConfigCsvOptions? csvOptions,
    String? displayName,
    bool? forceDestroy,
    InsightsReportConfigFrequencyOptions? frequencyOptions,
    required String location,
    InsightsReportConfigObjectMetadataReportOptions?
    objectMetadataReportOptions,
    Map<String, dynamic>? parquetOptions,
    String? project,
  }) : csvOptions = pulumi
           .Input.asOptionalInput<InsightsReportConfigCsvOptions>(csvOptions),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
       frequencyOptions =
           pulumi.Input.asOptionalInput<InsightsReportConfigFrequencyOptions>(
             frequencyOptions,
           ),
       location = pulumi.Input.asInput<String>(location),
       objectMetadataReportOptions =
           pulumi.Input.asOptionalInput<
             InsightsReportConfigObjectMetadataReportOptions
           >(objectMetadataReportOptions),
       parquetOptions = pulumi.Input.asOptionalInput<Map<String, dynamic>>(
         parquetOptions,
       ),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csvOptions':
          ?pulumi.Input.mapOptionalInputValue<
            InsightsReportConfigCsvOptions,
            Map<String, dynamic>
          >(csvOptions, (value) => value.toMap()),
      'displayName': ?displayName,
      'forceDestroy': ?forceDestroy,
      'frequencyOptions':
          ?pulumi.Input.mapOptionalInputValue<
            InsightsReportConfigFrequencyOptions,
            Map<String, dynamic>
          >(frequencyOptions, (value) => value.toMap()),
      'location': location,
      'objectMetadataReportOptions':
          ?pulumi.Input.mapOptionalInputValue<
            InsightsReportConfigObjectMetadataReportOptions,
            Map<String, dynamic>
          >(objectMetadataReportOptions, (value) => value.toMap()),
      'parquetOptions': ?parquetOptions,
      'project': ?project,
    };
  }

  factory InsightsReportConfigArgs.fromMap(Map<String, dynamic> map) {
    return InsightsReportConfigArgs(
      csvOptions: map['csvOptions'] == null
          ? null
          : InsightsReportConfigCsvOptions.fromMap(
              (map['csvOptions'] as Map).cast<String, dynamic>(),
            ),
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      forceDestroy: map['forceDestroy'] == null
          ? null
          : map['forceDestroy'] as bool,
      frequencyOptions: map['frequencyOptions'] == null
          ? null
          : InsightsReportConfigFrequencyOptions.fromMap(
              (map['frequencyOptions'] as Map).cast<String, dynamic>(),
            ),
      location: map['location'] as String,
      objectMetadataReportOptions: map['objectMetadataReportOptions'] == null
          ? null
          : InsightsReportConfigObjectMetadataReportOptions.fromMap(
              (map['objectMetadataReportOptions'] as Map)
                  .cast<String, dynamic>(),
            ),
      parquetOptions: map['parquetOptions'] == null
          ? null
          : (map['parquetOptions'] as Map).cast<String, dynamic>(),
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
