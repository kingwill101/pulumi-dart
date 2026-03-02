// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_files_data_source_response_settings.dart';

/// Definition of which custom log files will be collected by this data collection rule
class LogFilesDataSourceResponse {
  /// File Patterns where the log files are located
  final pulumi.Input<List<String>> filePatterns;
  /// The data format of the log files
  final pulumi.Input<String> format;
  /// A friendly name for the data source.
  /// This name should be unique across all data sources (regardless of type) within the data collection rule.
  final pulumi.Input<String>? name;
  /// The log files specific settings.
  final pulumi.Input<LogFilesDataSourceResponseSettings>? settings;
  /// List of streams that this data source will be sent to.
  /// A stream indicates what schema will be used for this data source
  final pulumi.Input<List<String>> streams;

  /// Creates a new [LogFilesDataSourceResponse].
  /// [filePatterns] File Patterns where the log files are located
  /// [format] The data format of the log files
  /// [name] A friendly name for the data source.
  /// [settings] The log files specific settings.
  /// [streams] List of streams that this data source will be sent to.
  LogFilesDataSourceResponse({
    required this.filePatterns,
    required this.format,
    this.name,
    this.settings,
    required this.streams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filePatterns': filePatterns,
      'format': format,
      'name': ?name,
      'settings': ?pulumi.Input.mapOptionalInputValue<LogFilesDataSourceResponseSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'streams': streams,
    };
  }

  factory LogFilesDataSourceResponse.fromMap(Map<String, dynamic> map) {
    return LogFilesDataSourceResponse(
      filePatterns: ((map['filePatterns'] as List).cast<String>()).input(),
      format: (map['format'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      settings: map['settings'] == null ? null : (LogFilesDataSourceResponseSettings.fromMap((map['settings'] as Map).cast<String, dynamic>())).input(),
      streams: ((map['streams'] as List).cast<String>()).input(),
    );
  }
}

