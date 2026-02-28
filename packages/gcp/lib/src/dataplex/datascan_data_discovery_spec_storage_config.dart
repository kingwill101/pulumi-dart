// ignore_for_file: unused_element, unnecessary_cast

import 'datascan_data_discovery_spec_storage_config_csv_options.dart';
import 'datascan_data_discovery_spec_storage_config_json_options.dart';

class DatascanDataDiscoverySpecStorageConfig {
  /// Configuration for CSV data.
  /// Structure is documented below.
  final DatascanDataDiscoverySpecStorageConfigCsvOptions? csvOptions;

  /// Defines the data to exclude during discovery. Provide a list of patterns that identify the data to exclude. For Cloud Storage bucket assets, these patterns are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these patterns are interpreted as patterns to match table names.
  final List<String>? excludePatterns;

  /// Defines the data to include during discovery when only a subset of the data should be considered. Provide a list of patterns that identify the data to include. For Cloud Storage bucket assets, these patterns are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these patterns are interpreted as patterns to match table names.
  final List<String>? includePatterns;

  /// Configuration for JSON data.
  /// Structure is documented below.
  final DatascanDataDiscoverySpecStorageConfigJsonOptions? jsonOptions;

  /// Creates a new [DatascanDataDiscoverySpecStorageConfig].
  /// [csvOptions] Configuration for CSV data.
  /// [excludePatterns] Defines the data to exclude during discovery. Provide a list of patterns that identify the data to exclude. For Cloud Storage bucket assets, these patterns are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these patterns are interpreted as patterns to match table names.
  /// [includePatterns] Defines the data to include during discovery when only a subset of the data should be considered. Provide a list of patterns that identify the data to include. For Cloud Storage bucket assets, these patterns are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these patterns are interpreted as patterns to match table names.
  /// [jsonOptions] Configuration for JSON data.
  DatascanDataDiscoverySpecStorageConfig({
    this.csvOptions,
    this.excludePatterns,
    this.includePatterns,
    this.jsonOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final csvOptionsValue = csvOptions;
    if (csvOptionsValue != null) {
      map['csvOptions'] = csvOptionsValue.toMap();
    }
    final excludePatternsValue = excludePatterns;
    if (excludePatternsValue != null) {
      map['excludePatterns'] = excludePatternsValue;
    }
    final includePatternsValue = includePatterns;
    if (includePatternsValue != null) {
      map['includePatterns'] = includePatternsValue;
    }
    final jsonOptionsValue = jsonOptions;
    if (jsonOptionsValue != null) {
      map['jsonOptions'] = jsonOptionsValue.toMap();
    }
    return map;
  }

  factory DatascanDataDiscoverySpecStorageConfig.fromMap(
      Map<String, dynamic> map) {
    return DatascanDataDiscoverySpecStorageConfig(
      csvOptions: map['csvOptions'] == null
          ? null
          : DatascanDataDiscoverySpecStorageConfigCsvOptions.fromMap(
              (map['csvOptions'] as Map).cast<String, dynamic>()),
      excludePatterns: map['excludePatterns'] == null
          ? null
          : (map['excludePatterns'] as List).cast<String>(),
      includePatterns: map['includePatterns'] == null
          ? null
          : (map['includePatterns'] as List).cast<String>(),
      jsonOptions: map['jsonOptions'] == null
          ? null
          : DatascanDataDiscoverySpecStorageConfigJsonOptions.fromMap(
              (map['jsonOptions'] as Map).cast<String, dynamic>()),
    );
  }
}
