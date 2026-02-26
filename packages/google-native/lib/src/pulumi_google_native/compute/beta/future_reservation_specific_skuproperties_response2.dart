// ignore_for_file: unused_element, unnecessary_cast

import 'allocation_specific_skuallocation_reserved_instance_properties_response2.dart';

class FutureReservationSpecificSKUPropertiesResponse2 {
  /// Properties of the SKU instances being reserved.
  final AllocationSpecificSKUAllocationReservedInstancePropertiesResponse2
      instanceProperties;

  /// The instance template that will be used to populate the ReservedInstanceProperties of the future reservation
  final String sourceInstanceTemplate;

  /// Total number of instances for which capacity assurance is requested at a future time period.
  final String totalCount;

  FutureReservationSpecificSKUPropertiesResponse2({
    required this.instanceProperties,
    required this.sourceInstanceTemplate,
    required this.totalCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceProperties'] = instanceProperties.toMap();
    map['sourceInstanceTemplate'] = sourceInstanceTemplate;
    map['totalCount'] = totalCount;
    return map;
  }

  factory FutureReservationSpecificSKUPropertiesResponse2.fromMap(
      Map<String, dynamic> map) {
    return FutureReservationSpecificSKUPropertiesResponse2(
      instanceProperties:
          AllocationSpecificSKUAllocationReservedInstancePropertiesResponse2
              .fromMap(
                  (map['instanceProperties'] as Map).cast<String, dynamic>()),
      sourceInstanceTemplate: map['sourceInstanceTemplate'] as String,
      totalCount: map['totalCount'] as String,
    );
  }
}
