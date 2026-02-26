// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../file_cache_lustre_configuration_log_configuration/file_cache_lustre_configuration_log_configuration.dart';
import '../file_cache_lustre_configuration_metadata_configuration/file_cache_lustre_configuration_metadata_configuration.dart';

class FileCacheLustreConfiguration {
  /// Specifies the cache deployment type. The only supported value is `CACHE_1`.
  final String deploymentType;
  final List<FileCacheLustreConfigurationLogConfiguration>? logConfigurations;

  /// The configuration for a Lustre MDT (Metadata Target) storage volume. See the <span pulumi-lang-nodejs="`metadataConfiguration`" pulumi-lang-dotnet="`MetadataConfiguration`" pulumi-lang-go="`metadataConfiguration`" pulumi-lang-python="`metadata_configuration`" pulumi-lang-yaml="`metadataConfiguration`" pulumi-lang-java="`metadataConfiguration`">`metadata_configuration`</span> block.
  final List<FileCacheLustreConfigurationMetadataConfiguration>
      metadataConfigurations;
  final String? mountName;

  /// Provisions the amount of read and write throughput for each 1 tebibyte (TiB) of cache storage capacity, in MB/s/TiB. The only supported value is <span pulumi-lang-nodejs="`1000`" pulumi-lang-dotnet="`1000`" pulumi-lang-go="`1000`" pulumi-lang-python="`1000`" pulumi-lang-yaml="`1000`" pulumi-lang-java="`1000`">`1000`</span>.
  final int perUnitStorageThroughput;

  /// A recurring weekly time, in the format `D:HH:MM`. `D` is the day of the week, for which <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> represents Monday and <span pulumi-lang-nodejs="`7`" pulumi-lang-dotnet="`7`" pulumi-lang-go="`7`" pulumi-lang-python="`7`" pulumi-lang-yaml="`7`" pulumi-lang-java="`7`">`7`</span> represents Sunday. `HH` is the zero-padded hour of the day (0-23), and `MM` is the zero-padded minute of the hour. For example, 1:05:00 specifies maintenance at 5 AM Monday. See the [ISO week date](https://en.wikipedia.org/wiki/ISO_week_date) for more information.
  final String? weeklyMaintenanceStartTime;

  FileCacheLustreConfiguration({
    required this.deploymentType,
    this.logConfigurations,
    required this.metadataConfigurations,
    this.mountName,
    required this.perUnitStorageThroughput,
    this.weeklyMaintenanceStartTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deploymentType'] = deploymentType;
    final logConfigurationsValue = logConfigurations;
    if (logConfigurationsValue != null) {
      map['logConfigurations'] = Input.encodeList<
              FileCacheLustreConfigurationLogConfiguration,
              Map<String, dynamic>>(
          logConfigurationsValue, (value) => value.toMap());
    }
    map['metadataConfigurations'] = Input.encodeList<
        FileCacheLustreConfigurationMetadataConfiguration,
        Map<String, dynamic>>(metadataConfigurations, (value) => value.toMap());
    final mountNameValue = mountName;
    if (mountNameValue != null) {
      map['mountName'] = mountNameValue;
    }
    map['perUnitStorageThroughput'] = perUnitStorageThroughput;
    final weeklyMaintenanceStartTimeValue = weeklyMaintenanceStartTime;
    if (weeklyMaintenanceStartTimeValue != null) {
      map['weeklyMaintenanceStartTime'] = weeklyMaintenanceStartTimeValue;
    }
    return map;
  }

  factory FileCacheLustreConfiguration.fromMap(Map<String, dynamic> map) {
    return FileCacheLustreConfiguration(
      deploymentType: map['deploymentType'] as String,
      logConfigurations: map['logConfigurations'] == null
          ? null
          : Input.decodeList<FileCacheLustreConfigurationLogConfiguration>(
              map['logConfigurations'],
              (value) => FileCacheLustreConfigurationLogConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      metadataConfigurations:
          Input.decodeList<FileCacheLustreConfigurationMetadataConfiguration>(
              map['metadataConfigurations'],
              (value) =>
                  FileCacheLustreConfigurationMetadataConfiguration.fromMap(
                      (value as Map).cast<String, dynamic>())),
      mountName: map['mountName'] == null ? null : map['mountName'] as String,
      perUnitStorageThroughput: map['perUnitStorageThroughput'] as int,
      weeklyMaintenanceStartTime: map['weeklyMaintenanceStartTime'] == null
          ? null
          : map['weeklyMaintenanceStartTime'] as String,
    );
  }
}
