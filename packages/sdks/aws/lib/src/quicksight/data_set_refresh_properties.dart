// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_set_refresh_properties_refresh_configuration.dart';

class DataSetRefreshProperties {
  /// Refresh configuration for the data set. See `refreshConfiguration` Block below.
  final pulumi.Input<DataSetRefreshPropertiesRefreshConfiguration> refreshConfiguration;

  /// Creates a new [DataSetRefreshProperties].
  /// [refreshConfiguration] Refresh configuration for the data set. See `refreshConfiguration` Block below.
  const DataSetRefreshProperties({
    required this.refreshConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'refreshConfiguration': pulumi.Input.mapInputValue<DataSetRefreshPropertiesRefreshConfiguration, Map<String, dynamic>>(refreshConfiguration, (value) => value.toMap()),
    };
  }

  factory DataSetRefreshProperties.fromMap(Map<String, dynamic> map) {
    return DataSetRefreshProperties(
      refreshConfiguration: pulumi.Input.fromValue(DataSetRefreshPropertiesRefreshConfiguration.fromMap((map['refreshConfiguration']! as Map).cast<String, dynamic>())),
    );
  }
}
