// ignore_for_file: unused_element, unnecessary_cast

import 'instance_properties_patch_compute_beta.dart';

class InstanceGroupManagerAllInstancesConfigComputeBeta {
  /// Properties to set on all instances in the group. You can add or modify properties using the instanceGroupManagers.patch or regionInstanceGroupManagers.patch. After setting allInstancesConfig on the group, you must update the group's instances to apply the configuration. To apply the configuration, set the group's updatePolicy.type field to use proactive updates or use the applyUpdatesToInstances method.
  final InstancePropertiesPatchComputeBeta? properties;

  /// Creates a new [InstanceGroupManagerAllInstancesConfigComputeBeta].
  /// [properties] Properties to set on all instances in the group. You can add or modify properties using the instanceGroupManagers.patch or regionInstanceGroupManagers.patch. After setting allInstancesConfig on the group, you must update the group's instances to apply the configuration. To apply the configuration, set the group's updatePolicy.type field to use proactive updates or use the applyUpdatesToInstances method.
  InstanceGroupManagerAllInstancesConfigComputeBeta({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?properties == null ? null : properties!.toMap(),
    };
  }

  factory InstanceGroupManagerAllInstancesConfigComputeBeta.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerAllInstancesConfigComputeBeta(
      properties: map['properties'] == null ? null : InstancePropertiesPatchComputeBeta.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

