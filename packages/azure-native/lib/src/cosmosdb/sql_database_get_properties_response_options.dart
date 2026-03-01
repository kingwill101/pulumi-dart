// ignore_for_file: unused_element, unnecessary_cast

import 'autoscale_settings_response.dart';

class SqlDatabaseGetPropertiesResponseOptions {
  /// Specifies the Autoscale settings.
  final AutoscaleSettingsResponse? autoscaleSettings;
  /// Value of the Cosmos DB resource throughput or autoscaleSettings. Use the ThroughputSetting resource when retrieving offer details.
  final int? throughput;

  /// Creates a new [SqlDatabaseGetPropertiesResponseOptions].
  /// [autoscaleSettings] Specifies the Autoscale settings.
  /// [throughput] Value of the Cosmos DB resource throughput or autoscaleSettings. Use the ThroughputSetting resource when retrieving offer details.
  SqlDatabaseGetPropertiesResponseOptions({
    this.autoscaleSettings,
    this.throughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscaleSettings': ?autoscaleSettings == null ? null : autoscaleSettings!.toMap(),
      'throughput': ?throughput,
    };
  }

  factory SqlDatabaseGetPropertiesResponseOptions.fromMap(Map<String, dynamic> map) {
    return SqlDatabaseGetPropertiesResponseOptions(
      autoscaleSettings: map['autoscaleSettings'] == null ? null : AutoscaleSettingsResponse.fromMap((map['autoscaleSettings'] as Map).cast<String, dynamic>()),
      throughput: map['throughput'] == null ? null : map['throughput'] as int,
    );
  }
}

