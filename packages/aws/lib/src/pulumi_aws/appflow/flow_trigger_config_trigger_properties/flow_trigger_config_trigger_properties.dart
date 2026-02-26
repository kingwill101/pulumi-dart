// ignore_for_file: unused_element, unnecessary_cast

import '../flow_trigger_config_trigger_properties_scheduled/flow_trigger_config_trigger_properties_scheduled.dart';

class FlowTriggerConfigTriggerProperties {
  final FlowTriggerConfigTriggerPropertiesScheduled? scheduled;

  FlowTriggerConfigTriggerProperties({
    this.scheduled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final scheduledValue = scheduled;
    if (scheduledValue != null) {
      map['scheduled'] = scheduledValue.toMap();
    }
    return map;
  }

  factory FlowTriggerConfigTriggerProperties.fromMap(Map<String, dynamic> map) {
    return FlowTriggerConfigTriggerProperties(
      scheduled: map['scheduled'] == null
          ? null
          : FlowTriggerConfigTriggerPropertiesScheduled.fromMap(
              (map['scheduled'] as Map).cast<String, dynamic>()),
    );
  }
}
