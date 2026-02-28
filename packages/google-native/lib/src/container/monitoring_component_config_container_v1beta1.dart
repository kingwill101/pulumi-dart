// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_component_config_enable_components_item_container_v1beta1.dart';

/// MonitoringComponentConfig is cluster monitoring component configuration.
class MonitoringComponentConfigContainerV1beta1 {
  /// Select components to collect metrics. An empty set would disable all monitoring.
  final List<MonitoringComponentConfigEnableComponentsItemContainerV1beta1>?
      enableComponents;

  /// Creates a new [MonitoringComponentConfigContainerV1beta1].
  /// [enableComponents] Select components to collect metrics. An empty set would disable all monitoring.
  MonitoringComponentConfigContainerV1beta1({
    this.enableComponents,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableComponentsValue = enableComponents;
    if (enableComponentsValue != null) {
      map['enableComponents'] = pulumi.Input.encodeList<
          MonitoringComponentConfigEnableComponentsItemContainerV1beta1,
          String>(enableComponentsValue, (value) => value.value);
    }
    return map;
  }

  factory MonitoringComponentConfigContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return MonitoringComponentConfigContainerV1beta1(
      enableComponents: map['enableComponents'] == null
          ? null
          : pulumi.Input.decodeList<
                  MonitoringComponentConfigEnableComponentsItemContainerV1beta1>(
              map['enableComponents'],
              (value) =>
                  MonitoringComponentConfigEnableComponentsItemContainerV1beta1
                      .fromValue(value as String)),
    );
  }
}
