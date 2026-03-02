// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_set_refresh_properties_refresh_configuration_incremental_refresh_lookback_window.dart';

class DataSetRefreshPropertiesRefreshConfigurationIncrementalRefresh {
  /// The lookback window setup for an incremental refresh configuration. See lookback_window.
  final pulumi.Input<DataSetRefreshPropertiesRefreshConfigurationIncrementalRefreshLookbackWindow> lookbackWindow;

  /// Creates a new [DataSetRefreshPropertiesRefreshConfigurationIncrementalRefresh].
  /// [lookbackWindow] The lookback window setup for an incremental refresh configuration. See lookback_window.
  DataSetRefreshPropertiesRefreshConfigurationIncrementalRefresh({
    required this.lookbackWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lookbackWindow': pulumi.Input.mapInputValue<DataSetRefreshPropertiesRefreshConfigurationIncrementalRefreshLookbackWindow, Map<String, dynamic>>(lookbackWindow, (value) => value.toMap()),
    };
  }

  factory DataSetRefreshPropertiesRefreshConfigurationIncrementalRefresh.fromMap(Map<String, dynamic> map) {
    return DataSetRefreshPropertiesRefreshConfigurationIncrementalRefresh(
      lookbackWindow: (DataSetRefreshPropertiesRefreshConfigurationIncrementalRefreshLookbackWindow.fromMap((map['lookbackWindow']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

