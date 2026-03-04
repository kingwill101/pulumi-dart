// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'di_job_source_data_source_setting_data_source_properties.dart';

class DiJobSourceDataSourceSetting {
  /// Data source name of a single source
  final pulumi.Input<String>? dataSourceName;

  /// Single Source Data Source Properties See `data_source_properties` below.
  final pulumi.Input<DiJobSourceDataSourceSettingDataSourceProperties>?
  dataSourceProperties;

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
      'dataSourceProperties':
          ?pulumi.Input.mapOptionalInputValue<
            DiJobSourceDataSourceSettingDataSourceProperties,
            Map<String, dynamic>
          >(dataSourceProperties, (value) => value.toMap()),
    };
  }

  factory DiJobSourceDataSourceSetting.fromMap(Map<String, dynamic> map) {
    return DiJobSourceDataSourceSetting(
      dataSourceName: (() {
        final guardedValue = map['dataSourceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataSourceProperties: (() {
        final guardedValue = map['dataSourceProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DiJobSourceDataSourceSettingDataSourceProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
