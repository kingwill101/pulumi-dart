// ignore_for_file: unused_element, unnecessary_cast

import 'instance_properties_patch_response_compute_beta.dart';

class InstanceGroupManagerAllInstancesConfigResponseComputeBeta {
  /// Properties to set on all instances in the group. You can add or modify properties using the instanceGroupManagers.patch or regionInstanceGroupManagers.patch. After setting allInstancesConfig on the group, you must update the group's instances to apply the configuration. To apply the configuration, set the group's updatePolicy.type field to use proactive updates or use the applyUpdatesToInstances method.
  final InstancePropertiesPatchResponseComputeBeta properties;

  InstanceGroupManagerAllInstancesConfigResponseComputeBeta({
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['properties'] = properties.toMap();
    return map;
  }

  factory InstanceGroupManagerAllInstancesConfigResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerAllInstancesConfigResponseComputeBeta(
      properties: InstancePropertiesPatchResponseComputeBeta.fromMap(
          (map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}
