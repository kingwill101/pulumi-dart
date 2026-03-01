// ignore_for_file: unused_element, unnecessary_cast

import 'di_job_source_data_source_setting_data_source_properties.dart';

class DiJobSourceDataSourceSetting {
  /// Data source name of a single source
  final String? dataSourceName;
  /// Single Source Data Source Properties See `data_source_properties` below.
  final DiJobSourceDataSourceSettingDataSourceProperties? dataSourceProperties;

  /// Creates a new [DiJobSourceDataSourceSetting].
  /// [dataSourceName] Data source name of a single source
  /// [dataSourceProperties] Single Source Data Source Properties See `data_source_properties` below.
  DiJobSourceDataSourceSetting({
    this.dataSourceName,
    this.dataSourceProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceName': ?dataSourceName,
      'dataSourceProperties': ?dataSourceProperties == null ? null : dataSourceProperties!.toMap(),
    };
  }

  factory DiJobSourceDataSourceSetting.fromMap(Map<String, dynamic> map) {
    return DiJobSourceDataSourceSetting(
      dataSourceName: map['dataSourceName'] == null ? null : map['dataSourceName'] as String,
      dataSourceProperties: map['dataSourceProperties'] == null ? null : DiJobSourceDataSourceSettingDataSourceProperties.fromMap((map['dataSourceProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

