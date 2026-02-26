// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'logging_component_config_enable_components_item.dart';

/// LoggingComponentConfig is cluster logging component configuration.
class LoggingComponentConfig {
  /// Select components to collect logs. An empty set would disable all logging.
  final List<LoggingComponentConfigEnableComponentsItem>? enableComponents;

  LoggingComponentConfig({
    this.enableComponents,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableComponentsValue = enableComponents;
    if (enableComponentsValue != null) {
      map['enableComponents'] =
          Input.encodeList<LoggingComponentConfigEnableComponentsItem, String>(
              enableComponentsValue, (value) => value.value);
    }
    return map;
  }

  factory LoggingComponentConfig.fromMap(Map<String, dynamic> map) {
    return LoggingComponentConfig(
      enableComponents: map['enableComponents'] == null
          ? null
          : Input.decodeList<LoggingComponentConfigEnableComponentsItem>(
              map['enableComponents'],
              (value) => LoggingComponentConfigEnableComponentsItem.fromValue(
                  value as String)),
    );
  }
}
