// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_trigger_config_trigger_properties_scheduled.dart';

class FlowTriggerConfigTriggerProperties {
  /// Configuration details of a schedule-triggered flow. See the `trigger_config.trigger_properties.scheduled` Block for details.
  final pulumi.Input<FlowTriggerConfigTriggerPropertiesScheduled?>? scheduled;

  /// Creates a new [FlowTriggerConfigTriggerProperties].
  /// [scheduled] Configuration details of a schedule-triggered flow. See the `trigger_config.trigger_properties.scheduled` Block for details.
  const FlowTriggerConfigTriggerProperties({
    this.scheduled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduled': ?pulumi.Input.mapOptionalInputValue<FlowTriggerConfigTriggerPropertiesScheduled, Map<String, dynamic>>(scheduled, (value) => value.toMap()),
    };
  }

  factory FlowTriggerConfigTriggerProperties.fromMap(Map<String, dynamic> map) {
    return FlowTriggerConfigTriggerProperties(
      scheduled: (() { final guardedValue = map['scheduled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowTriggerConfigTriggerPropertiesScheduled.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
