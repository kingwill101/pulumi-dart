// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'monitoring_component_config_enable_components_item2.dart';

/// MonitoringComponentConfig is cluster monitoring component configuration.
class MonitoringComponentConfig2 {
  /// Select components to collect metrics. An empty set would disable all monitoring.
  final List<MonitoringComponentConfigEnableComponentsItem2>? enableComponents;

  MonitoringComponentConfig2({
    this.enableComponents,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableComponentsValue = enableComponents;
    if (enableComponentsValue != null) {
      map['enableComponents'] = Input.encodeList<
          MonitoringComponentConfigEnableComponentsItem2,
          String>(enableComponentsValue, (value) => value.value);
    }
    return map;
  }

  factory MonitoringComponentConfig2.fromMap(Map<String, dynamic> map) {
    return MonitoringComponentConfig2(
      enableComponents: map['enableComponents'] == null
          ? null
          : Input.decodeList<MonitoringComponentConfigEnableComponentsItem2>(
              map['enableComponents'],
              (value) =>
                  MonitoringComponentConfigEnableComponentsItem2.fromValue(
                      value as String)),
    );
  }
}
