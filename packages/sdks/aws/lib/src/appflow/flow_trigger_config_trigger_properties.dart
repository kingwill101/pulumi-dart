// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_trigger_config_trigger_properties_scheduled.dart';

class FlowTriggerConfigTriggerProperties {
  final pulumi.Input<FlowTriggerConfigTriggerPropertiesScheduled>? scheduled;

  /// Creates a new [FlowTriggerConfigTriggerProperties].
  /// [scheduled] Optional.
  FlowTriggerConfigTriggerProperties({
    this.scheduled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduled': ?pulumi.Input.mapOptionalInputValue<FlowTriggerConfigTriggerPropertiesScheduled, Map<String, dynamic>>(scheduled, (value) => value.toMap()),
    };
  }

  factory FlowTriggerConfigTriggerProperties.fromMap(Map<String, dynamic> map) {
    return FlowTriggerConfigTriggerProperties(
      scheduled: map['scheduled'] == null ? null : (FlowTriggerConfigTriggerPropertiesScheduled.fromMap((map['scheduled'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

