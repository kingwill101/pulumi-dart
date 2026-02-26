// ignore_for_file: unused_element, unnecessary_cast

import '../flow_trigger_config_trigger_properties/flow_trigger_config_trigger_properties.dart';

class FlowTriggerConfig {
  /// Configuration details of a schedule-triggered flow as defined by the user. Currently, these settings only apply to the `Scheduled` trigger type. See Scheduled Trigger Properties for details.
  final FlowTriggerConfigTriggerProperties? triggerProperties;

  /// Type of flow trigger. Valid values are `Scheduled`, `Event`, and `OnDemand`.
  final String triggerType;

  FlowTriggerConfig({
    this.triggerProperties,
    required this.triggerType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final triggerPropertiesValue = triggerProperties;
    if (triggerPropertiesValue != null) {
      map['triggerProperties'] = triggerPropertiesValue.toMap();
    }
    map['triggerType'] = triggerType;
    return map;
  }

  factory FlowTriggerConfig.fromMap(Map<String, dynamic> map) {
    return FlowTriggerConfig(
      triggerProperties: map['triggerProperties'] == null
          ? null
          : FlowTriggerConfigTriggerProperties.fromMap(
              (map['triggerProperties'] as Map).cast<String, dynamic>()),
      triggerType: map['triggerType'] as String,
    );
  }
}
