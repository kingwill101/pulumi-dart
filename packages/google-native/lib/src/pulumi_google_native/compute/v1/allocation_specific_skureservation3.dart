// ignore_for_file: unused_element, unnecessary_cast

import 'allocation_specific_skuallocation_reserved_instance_properties3.dart';

/// This reservation type allows to pre allocate specific instance configuration. Next ID: 6
class AllocationSpecificSKUReservation3 {
  /// Specifies the number of resources that are allocated.
  final String? count;

  /// The instance properties for the reservation.
  final AllocationSpecificSKUAllocationReservedInstanceProperties3?
      instanceProperties;

  /// Specifies the instance template to create the reservation. If you use this field, you must exclude the instanceProperties field. This field is optional, and it can be a full or partial URL. For example, the following are all valid URLs to an instance template: - https://www.googleapis.com/compute/v1/projects/project /global/instanceTemplates/instanceTemplate - projects/project/global/instanceTemplates/instanceTemplate - global/instanceTemplates/instanceTemplate
  final String? sourceInstanceTemplate;

  AllocationSpecificSKUReservation3({
    this.count,
    this.instanceProperties,
    this.sourceInstanceTemplate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final countValue = count;
    if (countValue != null) {
      map['count'] = countValue;
    }
    final instancePropertiesValue = instanceProperties;
    if (instancePropertiesValue != null) {
      map['instanceProperties'] = instancePropertiesValue.toMap();
    }
    final sourceInstanceTemplateValue = sourceInstanceTemplate;
    if (sourceInstanceTemplateValue != null) {
      map['sourceInstanceTemplate'] = sourceInstanceTemplateValue;
    }
    return map;
  }

  factory AllocationSpecificSKUReservation3.fromMap(Map<String, dynamic> map) {
    return AllocationSpecificSKUReservation3(
      count: map['count'] == null ? null : map['count'] as String,
      instanceProperties: map['instanceProperties'] == null
          ? null
          : AllocationSpecificSKUAllocationReservedInstanceProperties3.fromMap(
              (map['instanceProperties'] as Map).cast<String, dynamic>()),
      sourceInstanceTemplate: map['sourceInstanceTemplate'] == null
          ? null
          : map['sourceInstanceTemplate'] as String,
    );
  }
}
