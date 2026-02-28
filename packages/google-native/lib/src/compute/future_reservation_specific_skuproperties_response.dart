// ignore_for_file: unused_element, unnecessary_cast

import 'allocation_specific_skuallocation_reserved_instance_properties_response.dart';

class FutureReservationSpecificSKUPropertiesResponse {
  /// Properties of the SKU instances being reserved.
  final AllocationSpecificSKUAllocationReservedInstancePropertiesResponse instanceProperties;
  /// The instance template that will be used to populate the ReservedInstanceProperties of the future reservation
  final String sourceInstanceTemplate;
  /// Total number of instances for which capacity assurance is requested at a future time period.
  final String totalCount;

  /// Creates a new [FutureReservationSpecificSKUPropertiesResponse].
  /// [instanceProperties] Properties of the SKU instances being reserved.
  /// [sourceInstanceTemplate] The instance template that will be used to populate the ReservedInstanceProperties of the future reservation
  /// [totalCount] Total number of instances for which capacity assurance is requested at a future time period.
  FutureReservationSpecificSKUPropertiesResponse({
    required this.instanceProperties,
    required this.sourceInstanceTemplate,
    required this.totalCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceProperties': instanceProperties.toMap(),
      'sourceInstanceTemplate': sourceInstanceTemplate,
      'totalCount': totalCount,
    };
  }

  factory FutureReservationSpecificSKUPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return FutureReservationSpecificSKUPropertiesResponse(
      instanceProperties: AllocationSpecificSKUAllocationReservedInstancePropertiesResponse.fromMap((map['instanceProperties'] as Map).cast<String, dynamic>()),
      sourceInstanceTemplate: map['sourceInstanceTemplate'] as String,
      totalCount: map['totalCount'] as String,
    );
  }
}

