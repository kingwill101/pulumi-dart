// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_set_refresh_properties_refresh_configuration_incremental_refresh.dart';

class DataSetRefreshPropertiesRefreshConfiguration {
  /// The incremental refresh for the data set. See incremental_refresh.
  final pulumi.Input<DataSetRefreshPropertiesRefreshConfigurationIncrementalRefresh> incrementalRefresh;

  /// Creates a new [DataSetRefreshPropertiesRefreshConfiguration].
  /// [incrementalRefresh] The incremental refresh for the data set. See incremental_refresh.
  const DataSetRefreshPropertiesRefreshConfiguration({
    required this.incrementalRefresh,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'incrementalRefresh': pulumi.Input.mapInputValue<DataSetRefreshPropertiesRefreshConfigurationIncrementalRefresh, Map<String, dynamic>>(incrementalRefresh, (value) => value.toMap()),
    };
  }

  factory DataSetRefreshPropertiesRefreshConfiguration.fromMap(Map<String, dynamic> map) {
    return DataSetRefreshPropertiesRefreshConfiguration(
      incrementalRefresh: pulumi.Input.fromValue(DataSetRefreshPropertiesRefreshConfigurationIncrementalRefresh.fromMap((map['incrementalRefresh']! as Map).cast<String, dynamic>())),
    );
  }
}

