// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_cache_lustre_configuration_log_configuration.dart';
import 'file_cache_lustre_configuration_metadata_configuration.dart';

class FileCacheLustreConfiguration {
  /// Cache deployment type. The only supported value is `CACHE_1`.
  final pulumi.Input<String> deploymentType;
  /// Configuration for Lustre logging used to write the enabled logging events for the cache. See `logConfiguration` Block below.
  final pulumi.Input<List<FileCacheLustreConfigurationLogConfiguration>?>? logConfigurations;
  /// Configuration for a Lustre MDT (Metadata Target) storage volume. See `metadataConfiguration` Block below.
  final pulumi.Input<List<FileCacheLustreConfigurationMetadataConfiguration>> metadataConfigurations;
  /// Mount name of the cache.
  final pulumi.Input<String?>? mountName;
  /// Throughput provisioned for each 1 tebibyte (TiB) of cache storage capacity, in MB/s/TiB. The only supported value is `1000`.
  final pulumi.Input<int> perUnitStorageThroughput;
  /// Recurring weekly time to start maintenance, in the format `D:HH:MM`. `D` is the day of the week, where `1` represents Monday and `7` represents Sunday. `HH` is the zero-padded hour of the day (0-23), and `MM` is the zero-padded minute of the hour. See the [ISO week date](https://en.wikipedia.org/wiki/ISO_week_date) for more information.
  final pulumi.Input<String?>? weeklyMaintenanceStartTime;

  /// Creates a new [FileCacheLustreConfiguration].
  /// [deploymentType] Cache deployment type. The only supported value is `CACHE_1`.
  /// [logConfigurations] Configuration for Lustre logging used to write the enabled logging events for the cache. See `logConfiguration` Block below.
  /// [metadataConfigurations] Configuration for a Lustre MDT (Metadata Target) storage volume. See `metadataConfiguration` Block below.
  /// [mountName] Mount name of the cache.
  /// [perUnitStorageThroughput] Throughput provisioned for each 1 tebibyte (TiB) of cache storage capacity, in MB/s/TiB. The only supported value is `1000`.
  /// [weeklyMaintenanceStartTime] Recurring weekly time to start maintenance, in the format `D:HH:MM`. `D` is the day of the week, where `1` represents Monday and `7` represents Sunday. `HH` is the zero-padded hour of the day (0-23), and `MM` is the zero-padded minute of the hour. See the [ISO week date](https://en.wikipedia.org/wiki/ISO_week_date) for more information.
  const FileCacheLustreConfiguration({
    required this.deploymentType,
    this.logConfigurations,
    required this.metadataConfigurations,
    this.mountName,
    required this.perUnitStorageThroughput,
    this.weeklyMaintenanceStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentType': deploymentType,
      'logConfigurations': ?pulumi.Input.mapOptionalInputValue<List<FileCacheLustreConfigurationLogConfiguration>, List<Map<String, dynamic>>>(logConfigurations, (value) => pulumi.Input.encodeList<FileCacheLustreConfigurationLogConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metadataConfigurations': pulumi.Input.mapInputValue<List<FileCacheLustreConfigurationMetadataConfiguration>, List<Map<String, dynamic>>>(metadataConfigurations, (value) => pulumi.Input.encodeList<FileCacheLustreConfigurationMetadataConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mountName': ?mountName,
      'perUnitStorageThroughput': perUnitStorageThroughput,
      'weeklyMaintenanceStartTime': ?weeklyMaintenanceStartTime,
    };
  }

  factory FileCacheLustreConfiguration.fromMap(Map<String, dynamic> map) {
    return FileCacheLustreConfiguration(
      deploymentType: pulumi.Input.fromValue(map['deploymentType'] as String),
      logConfigurations: (() { final guardedValue = map['logConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FileCacheLustreConfigurationLogConfiguration>(guardedValue, (value) => FileCacheLustreConfigurationLogConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      metadataConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<FileCacheLustreConfigurationMetadataConfiguration>(map['metadataConfigurations']!, (value) => FileCacheLustreConfigurationMetadataConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      mountName: (() { final guardedValue = map['mountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      perUnitStorageThroughput: pulumi.Input.fromValue((map['perUnitStorageThroughput'] as num).toInt()),
      weeklyMaintenanceStartTime: (() { final guardedValue = map['weeklyMaintenanceStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
