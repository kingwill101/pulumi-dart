// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'logging_component_config_enable_components_item2.dart';

/// LoggingComponentConfig is cluster logging component configuration.
class LoggingComponentConfig2 {
  /// Select components to collect logs. An empty set would disable all logging.
  final List<LoggingComponentConfigEnableComponentsItem2>? enableComponents;

  LoggingComponentConfig2({
    this.enableComponents,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableComponentsValue = enableComponents;
    if (enableComponentsValue != null) {
      map['enableComponents'] =
          Input.encodeList<LoggingComponentConfigEnableComponentsItem2, String>(
              enableComponentsValue, (value) => value.value);
    }
    return map;
  }

  factory LoggingComponentConfig2.fromMap(Map<String, dynamic> map) {
    return LoggingComponentConfig2(
      enableComponents: map['enableComponents'] == null
          ? null
          : Input.decodeList<LoggingComponentConfigEnableComponentsItem2>(
              map['enableComponents'],
              (value) => LoggingComponentConfigEnableComponentsItem2.fromValue(
                  value as String)),
    );
  }
}
