// ignore_for_file: unused_element, unnecessary_cast

import 'instance_properties_patch2.dart';

class InstanceGroupManagerAllInstancesConfig2 {
  /// Properties to set on all instances in the group. You can add or modify properties using the instanceGroupManagers.patch or regionInstanceGroupManagers.patch. After setting allInstancesConfig on the group, you must update the group's instances to apply the configuration. To apply the configuration, set the group's updatePolicy.type field to use proactive updates or use the applyUpdatesToInstances method.
  final InstancePropertiesPatch2? properties;

  InstanceGroupManagerAllInstancesConfig2({
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

  factory InstanceGroupManagerAllInstancesConfig2.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerAllInstancesConfig2(
      properties: map['properties'] == null
          ? null
          : InstancePropertiesPatch2.fromMap(
              (map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}
