// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_component_config_enable_components_item_container_v1beta1.dart';

/// LoggingComponentConfig is cluster logging component configuration.
class LoggingComponentConfigContainerV1beta1 {
  /// Select components to collect logs. An empty set would disable all logging.
  final List<LoggingComponentConfigEnableComponentsItemContainerV1beta1>?
  enableComponents;

  /// Creates a new [LoggingComponentConfigContainerV1beta1].
  /// [enableComponents] Select components to collect logs. An empty set would disable all logging.
  LoggingComponentConfigContainerV1beta1({this.enableComponents});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableComponents': ?enableComponents == null
          ? null
          : pulumi.Input.encodeList<
              LoggingComponentConfigEnableComponentsItemContainerV1beta1,
              String
            >(enableComponents!, (value) => value.value),
    };
  }

  factory LoggingComponentConfigContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return LoggingComponentConfigContainerV1beta1(
      enableComponents: map['enableComponents'] == null
          ? null
          : pulumi.Input.decodeList<
              LoggingComponentConfigEnableComponentsItemContainerV1beta1
            >(
              map['enableComponents'],
              (value) =>
                  LoggingComponentConfigEnableComponentsItemContainerV1beta1.fromValue(
                    value as String,
                  ),
            ),
    );
  }
}
