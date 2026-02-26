// ignore_for_file: unused_element, unnecessary_cast

import 'instance_properties_patch.dart';

class InstanceGroupManagerAllInstancesConfig {
  /// Properties to set on all instances in the group. You can add or modify properties using the instanceGroupManagers.patch or regionInstanceGroupManagers.patch. After setting allInstancesConfig on the group, you must update the group's instances to apply the configuration. To apply the configuration, set the group's updatePolicy.type field to use proactive updates or use the applyUpdatesToInstances method.
  final InstancePropertiesPatch? properties;

  InstanceGroupManagerAllInstancesConfig({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = propertiesValue.toMap();
    }
    return map;
  }

  factory InstanceGroupManagerAllInstancesConfig.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerAllInstancesConfig(
      properties: map['properties'] == null
          ? null
          : InstancePropertiesPatch.fromMap(
              (map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}
