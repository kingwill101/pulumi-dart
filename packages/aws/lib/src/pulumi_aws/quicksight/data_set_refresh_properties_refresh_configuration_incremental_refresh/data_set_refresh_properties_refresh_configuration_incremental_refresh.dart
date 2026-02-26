// ignore_for_file: unused_element, unnecessary_cast

import '../data_set_refresh_properties_refresh_configuration_incremental_refresh_lookback_window/data_set_refresh_properties_refresh_configuration_incremental_refresh_lookback_window.dart';

class DataSetRefreshPropertiesRefreshConfigurationIncrementalRefresh {
  /// The lookback window setup for an incremental refresh configuration. See lookback_window.
  final DataSetRefreshPropertiesRefreshConfigurationIncrementalRefreshLookbackWindow
      lookbackWindow;

  DataSetRefreshPropertiesRefreshConfigurationIncrementalRefresh({
    required this.lookbackWindow,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lookbackWindow'] = lookbackWindow.toMap();
    return map;
  }

  factory DataSetRefreshPropertiesRefreshConfigurationIncrementalRefresh.fromMap(
      Map<String, dynamic> map) {
    return DataSetRefreshPropertiesRefreshConfigurationIncrementalRefresh(
      lookbackWindow:
          DataSetRefreshPropertiesRefreshConfigurationIncrementalRefreshLookbackWindow
              .fromMap((map['lookbackWindow'] as Map).cast<String, dynamic>()),
    );
  }
}
