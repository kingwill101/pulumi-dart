// ignore_for_file: unused_element, unnecessary_cast

import 'data_set_refresh_properties_refresh_configuration_incremental_refresh.dart';

class DataSetRefreshPropertiesRefreshConfiguration {
  /// The incremental refresh for the data set. See incremental_refresh.
  final DataSetRefreshPropertiesRefreshConfigurationIncrementalRefresh
      incrementalRefresh;

  /// Creates a new [DataSetRefreshPropertiesRefreshConfiguration].
  /// [incrementalRefresh] The incremental refresh for the data set. See incremental_refresh.
  DataSetRefreshPropertiesRefreshConfiguration({
    required this.incrementalRefresh,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['incrementalRefresh'] = incrementalRefresh.toMap();
    return map;
  }

  factory DataSetRefreshPropertiesRefreshConfiguration.fromMap(
      Map<String, dynamic> map) {
    return DataSetRefreshPropertiesRefreshConfiguration(
      incrementalRefresh:
          DataSetRefreshPropertiesRefreshConfigurationIncrementalRefresh
              .fromMap(
                  (map['incrementalRefresh'] as Map).cast<String, dynamic>()),
    );
  }
}
