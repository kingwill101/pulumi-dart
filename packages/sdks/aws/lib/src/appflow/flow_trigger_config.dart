// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_trigger_config_trigger_properties.dart';

class FlowTriggerConfig {
  /// Configuration details of a schedule-triggered flow as defined by the user. Currently, these settings only apply to the `Scheduled` trigger type. See the `trigger_config.trigger_properties` Block for details.
  final pulumi.Input<FlowTriggerConfigTriggerProperties?>? triggerProperties;
  /// Type of flow trigger. Valid values are `Scheduled`, `Event`, and `OnDemand`.
  final pulumi.Input<String> triggerType;

  /// Creates a new [FlowTriggerConfig].
  /// [triggerProperties] Configuration details of a schedule-triggered flow as defined by the user. Currently, these settings only apply to the `Scheduled` trigger type. See the `trigger_config.trigger_properties` Block for details.
  /// [triggerType] Type of flow trigger. Valid values are `Scheduled`, `Event`, and `OnDemand`.
  const FlowTriggerConfig({
    this.triggerProperties,
    required this.triggerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'triggerProperties': ?pulumi.Input.mapOptionalInputValue<FlowTriggerConfigTriggerProperties, Map<String, dynamic>>(triggerProperties, (value) => value.toMap()),
      'triggerType': triggerType,
    };
  }

  factory FlowTriggerConfig.fromMap(Map<String, dynamic> map) {
    return FlowTriggerConfig(
      triggerProperties: (() { final guardedValue = map['triggerProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowTriggerConfigTriggerProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      triggerType: pulumi.Input.fromValue(map['triggerType'] as String),
    );
  }
}
