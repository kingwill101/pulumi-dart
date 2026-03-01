// ignore_for_file: unused_element, unnecessary_cast

import 'data_set_refresh_properties_refresh_configuration.dart';

class DataSetRefreshProperties {
  /// The refresh configuration for the data set. See refresh_configuration.
  final DataSetRefreshPropertiesRefreshConfiguration refreshConfiguration;

  /// Creates a new [DataSetRefreshProperties].
  /// [refreshConfiguration] The refresh configuration for the data set. See refresh_configuration.
  DataSetRefreshProperties({required this.refreshConfiguration});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'refreshConfiguration': refreshConfiguration.toMap(),
    };
  }

  factory DataSetRefreshProperties.fromMap(Map<String, dynamic> map) {
    return DataSetRefreshProperties(
      refreshConfiguration:
          DataSetRefreshPropertiesRefreshConfiguration.fromMap(
            (map['refreshConfiguration'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
