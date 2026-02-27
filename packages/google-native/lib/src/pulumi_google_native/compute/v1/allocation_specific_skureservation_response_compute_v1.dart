// ignore_for_file: unused_element, unnecessary_cast

import 'allocation_specific_skuallocation_reserved_instance_properties_response_compute_v1.dart';

/// This reservation type allows to pre allocate specific instance configuration. Next ID: 6
class AllocationSpecificSKUReservationResponseComputeV1 {
  /// Indicates how many instances are actually usable currently.
  final String assuredCount;

  /// Specifies the number of resources that are allocated.
  final String count;

  /// Indicates how many instances are in use.
  final String inUseCount;

  /// The instance properties for the reservation.
  final AllocationSpecificSKUAllocationReservedInstancePropertiesResponseComputeV1
      instanceProperties;

  /// Specifies the instance template to create the reservation. If you use this field, you must exclude the instanceProperties field. This field is optional, and it can be a full or partial URL. For example, the following are all valid URLs to an instance template: - https://www.googleapis.com/compute/v1/projects/project /global/instanceTemplates/instanceTemplate - projects/project/global/instanceTemplates/instanceTemplate - global/instanceTemplates/instanceTemplate
  final String sourceInstanceTemplate;

  AllocationSpecificSKUReservationResponseComputeV1({
    required this.assuredCount,
    required this.count,
    required this.inUseCount,
    required this.instanceProperties,
    required this.sourceInstanceTemplate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['assuredCount'] = assuredCount;
    map['count'] = count;
    map['inUseCount'] = inUseCount;
    map['instanceProperties'] = instanceProperties.toMap();
    map['sourceInstanceTemplate'] = sourceInstanceTemplate;
    return map;
  }

  factory AllocationSpecificSKUReservationResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return AllocationSpecificSKUReservationResponseComputeV1(
      assuredCount: map['assuredCount'] as String,
      count: map['count'] as String,
      inUseCount: map['inUseCount'] as String,
      instanceProperties:
          AllocationSpecificSKUAllocationReservedInstancePropertiesResponseComputeV1
              .fromMap(
                  (map['instanceProperties'] as Map).cast<String, dynamic>()),
      sourceInstanceTemplate: map['sourceInstanceTemplate'] as String,
    );
  }
}
