// ignore_for_file: unused_element, unnecessary_cast

import 'allocation_specific_skuallocation_reserved_instance_properties_response_compute_beta.dart';

class FutureReservationSpecificSKUPropertiesResponseComputeBeta {
  /// Properties of the SKU instances being reserved.
  final AllocationSpecificSKUAllocationReservedInstancePropertiesResponseComputeBeta
  instanceProperties;

  /// The instance template that will be used to populate the ReservedInstanceProperties of the future reservation
  final String sourceInstanceTemplate;

  /// Total number of instances for which capacity assurance is requested at a future time period.
  final String totalCount;

  /// Creates a new [FutureReservationSpecificSKUPropertiesResponseComputeBeta].
  /// [instanceProperties] Properties of the SKU instances being reserved.
  /// [sourceInstanceTemplate] The instance template that will be used to populate the ReservedInstanceProperties of the future reservation
  /// [totalCount] Total number of instances for which capacity assurance is requested at a future time period.
  FutureReservationSpecificSKUPropertiesResponseComputeBeta({
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

  factory FutureReservationSpecificSKUPropertiesResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return FutureReservationSpecificSKUPropertiesResponseComputeBeta(
      instanceProperties:
          AllocationSpecificSKUAllocationReservedInstancePropertiesResponseComputeBeta.fromMap(
            (map['instanceProperties'] as Map).cast<String, dynamic>(),
          ),
      sourceInstanceTemplate: map['sourceInstanceTemplate'] as String,
      totalCount: map['totalCount'] as String,
    );
  }
}
