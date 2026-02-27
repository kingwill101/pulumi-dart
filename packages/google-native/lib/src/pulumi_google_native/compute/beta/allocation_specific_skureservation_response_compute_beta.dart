// ignore_for_file: unused_element, unnecessary_cast

import 'allocation_specific_skuallocation_reserved_instance_properties_response_compute_beta.dart';

/// This reservation type allows to pre allocate specific instance configuration. Next ID: 6
class AllocationSpecificSKUReservationResponseComputeBeta {
  /// Indicates how many instances are actually usable currently.
  final String assuredCount;

  /// Specifies the number of resources that are allocated.
  final String count;

  /// Indicates how many instances are in use.
  final String inUseCount;

  /// The instance properties for the reservation.
  final AllocationSpecificSKUAllocationReservedInstancePropertiesResponseComputeBeta
      instanceProperties;

  /// Specifies the instance template to create the reservation. If you use this field, you must exclude the instanceProperties field. This field is optional, and it can be a full or partial URL. For example, the following are all valid URLs to an instance template: - https://www.googleapis.com/compute/v1/projects/project /global/instanceTemplates/instanceTemplate - projects/project/global/instanceTemplates/instanceTemplate - global/instanceTemplates/instanceTemplate
  final String sourceInstanceTemplate;

  AllocationSpecificSKUReservationResponseComputeBeta({
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

  factory AllocationSpecificSKUReservationResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return AllocationSpecificSKUReservationResponseComputeBeta(
      assuredCount: map['assuredCount'] as String,
      count: map['count'] as String,
      inUseCount: map['inUseCount'] as String,
      instanceProperties:
          AllocationSpecificSKUAllocationReservedInstancePropertiesResponseComputeBeta
              .fromMap(
                  (map['instanceProperties'] as Map).cast<String, dynamic>()),
      sourceInstanceTemplate: map['sourceInstanceTemplate'] as String,
    );
  }
}
