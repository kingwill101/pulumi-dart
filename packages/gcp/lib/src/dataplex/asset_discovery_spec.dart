// ignore_for_file: unused_element, unnecessary_cast

import 'asset_discovery_spec_csv_options.dart';
import 'asset_discovery_spec_json_options.dart';

class AssetDiscoverySpec {
  /// Optional. Configuration for CSV data.
  final AssetDiscoverySpecCsvOptions? csvOptions;

  /// Required. Whether discovery is enabled.
  final bool enabled;

  /// Optional. The list of patterns to apply for selecting data to exclude during discovery. For Cloud Storage bucket assets, these are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these are interpreted as patterns to match table names.
  final List<String>? excludePatterns;

  /// Optional. The list of patterns to apply for selecting data to include during discovery if only a subset of the data should considered. For Cloud Storage bucket assets, these are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these are interpreted as patterns to match table names.
  final List<String>? includePatterns;

  /// Optional. Configuration for Json data.
  final AssetDiscoverySpecJsonOptions? jsonOptions;

  /// Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron) for running discovery periodically. Successive discovery runs must be scheduled at least 60 minutes apart. The default value is to run discovery every 60 minutes. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, "CRON_TZ=America/New_York 1 * * * *", or "TZ=America/New_York 1 * * * *".
  final String? schedule;

  /// Creates a new [AssetDiscoverySpec].
  /// [csvOptions] Optional. Configuration for CSV data.
  /// [enabled] Required. Whether discovery is enabled.
  /// [excludePatterns] Optional. The list of patterns to apply for selecting data to exclude during discovery. For Cloud Storage bucket assets, these are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these are interpreted as patterns to match table names.
  /// [includePatterns] Optional. The list of patterns to apply for selecting data to include during discovery if only a subset of the data should considered. For Cloud Storage bucket assets, these are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these are interpreted as patterns to match table names.
  /// [jsonOptions] Optional. Configuration for Json data.
  /// [schedule] Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron) for running discovery periodically. Successive discovery runs must be scheduled at least 60 minutes apart. The default value is to run discovery every 60 minutes. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, "CRON_TZ=America/New_York 1 * * * *", or "TZ=America/New_York 1 * * * *".
  AssetDiscoverySpec({
    this.csvOptions,
    required this.enabled,
    this.excludePatterns,
    this.includePatterns,
    this.jsonOptions,
    this.schedule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final csvOptionsValue = csvOptions;
    if (csvOptionsValue != null) {
      map['csvOptions'] = csvOptionsValue.toMap();
    }
    map['enabled'] = enabled;
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
    final scheduleValue = schedule;
    if (scheduleValue != null) {
      map['schedule'] = scheduleValue;
    }
    return map;
  }

  factory AssetDiscoverySpec.fromMap(Map<String, dynamic> map) {
    return AssetDiscoverySpec(
      csvOptions: map['csvOptions'] == null
          ? null
          : AssetDiscoverySpecCsvOptions.fromMap(
              (map['csvOptions'] as Map).cast<String, dynamic>()),
      enabled: map['enabled'] as bool,
      excludePatterns: map['excludePatterns'] == null
          ? null
          : (map['excludePatterns'] as List).cast<String>(),
      includePatterns: map['includePatterns'] == null
          ? null
          : (map['includePatterns'] as List).cast<String>(),
      jsonOptions: map['jsonOptions'] == null
          ? null
          : AssetDiscoverySpecJsonOptions.fromMap(
              (map['jsonOptions'] as Map).cast<String, dynamic>()),
      schedule: map['schedule'] == null ? null : map['schedule'] as String,
    );
  }
}
