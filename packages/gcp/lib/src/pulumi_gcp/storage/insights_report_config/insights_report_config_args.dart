// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../insights_report_config_csv_options/insights_report_config_csv_options.dart';
import '../insights_report_config_frequency_options/insights_report_config_frequency_options.dart';
import '../insights_report_config_object_metadata_report_options/insights_report_config_object_metadata_report_options.dart';

/// The set of arguments for InsightsReportConfig.
class InsightsReportConfigArgs {
  /// Options for configuring the format of the inventory report CSV file.
  /// Structure is documented below.
  final Input<InsightsReportConfigCsvOptions>? csvOptions;

  /// The editable display name of the inventory report configuration. Has a limit of 256 characters. Can be empty.
  final Input<String>? displayName;

  /// If set, all the inventory report details associated with this report configuration are deleted.
  final Input<bool>? forceDestroy;

  /// Options for configuring how inventory reports are generated.
  /// Structure is documented below.
  final Input<InsightsReportConfigFrequencyOptions>? frequencyOptions;

  /// The location of the ReportConfig. The source and destination buckets specified in the ReportConfig
  /// must be in the same location.
  final Input<String> location;

  /// Options for including metadata in an inventory report.
  /// Structure is documented below.
  final Input<InsightsReportConfigObjectMetadataReportOptions>?
      objectMetadataReportOptions;

  /// An option for outputting inventory reports as parquet files.
  final Input<Map<String, dynamic>>? parquetOptions;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  InsightsReportConfigArgs({
    this.csvOptions,
    this.displayName,
    this.forceDestroy,
    this.frequencyOptions,
    required this.location,
    this.objectMetadataReportOptions,
    this.parquetOptions,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final csvOptionsValue = csvOptions;
    if (csvOptionsValue != null) {
      map['csvOptions'] = Input.mapOptionalInputValue<
          InsightsReportConfigCsvOptions,
          Map<String, dynamic>>(csvOptionsValue, (value) => value.toMap());
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    final frequencyOptionsValue = frequencyOptions;
    if (frequencyOptionsValue != null) {
      map['frequencyOptions'] = Input.mapOptionalInputValue<
              InsightsReportConfigFrequencyOptions, Map<String, dynamic>>(
          frequencyOptionsValue, (value) => value.toMap());
    }
    map['location'] = location;
    final objectMetadataReportOptionsValue = objectMetadataReportOptions;
    if (objectMetadataReportOptionsValue != null) {
      map['objectMetadataReportOptions'] = Input.mapOptionalInputValue<
              InsightsReportConfigObjectMetadataReportOptions,
              Map<String, dynamic>>(
          objectMetadataReportOptionsValue, (value) => value.toMap());
    }
    final parquetOptionsValue = parquetOptions;
    if (parquetOptionsValue != null) {
      map['parquetOptions'] = parquetOptionsValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory InsightsReportConfigArgs.fromMap(Map<String, dynamic> map) {
    return InsightsReportConfigArgs(
      csvOptions: Input.asOptionalInput<InsightsReportConfigCsvOptions>(
          map['csvOptions']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      forceDestroy: Input.asOptionalInput<bool>(map['forceDestroy']),
      frequencyOptions:
          Input.asOptionalInput<InsightsReportConfigFrequencyOptions>(
              map['frequencyOptions']),
      location: Input.asInput<String>(map['location']),
      objectMetadataReportOptions: Input.asOptionalInput<
              InsightsReportConfigObjectMetadataReportOptions>(
          map['objectMetadataReportOptions']),
      parquetOptions:
          Input.asOptionalInput<Map<String, dynamic>>(map['parquetOptions']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
