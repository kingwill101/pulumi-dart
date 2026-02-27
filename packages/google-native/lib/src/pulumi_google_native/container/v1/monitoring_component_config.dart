// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_component_config_enable_components_item.dart';

/// MonitoringComponentConfig is cluster monitoring component configuration.
class MonitoringComponentConfig {
  /// Select components to collect metrics. An empty set would disable all monitoring.
  final List<MonitoringComponentConfigEnableComponentsItem>? enableComponents;

  MonitoringComponentConfig({
    this.enableComponents,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableComponentsValue = enableComponents;
    if (enableComponentsValue != null) {
      map['enableComponents'] = pulumi.Input.encodeList<
          MonitoringComponentConfigEnableComponentsItem,
          String>(enableComponentsValue, (value) => value.value);
    }
    return map;
  }

  factory MonitoringComponentConfig.fromMap(Map<String, dynamic> map) {
    return MonitoringComponentConfig(
      enableComponents: map['enableComponents'] == null
          ? null
          : pulumi.Input.decodeList<
                  MonitoringComponentConfigEnableComponentsItem>(
              map['enableComponents'],
              (value) =>
                  MonitoringComponentConfigEnableComponentsItem.fromValue(
                      value as String)),
    );
  }
}
