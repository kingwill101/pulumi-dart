// ignore_for_file: unused_element, unnecessary_cast

import 'allocation_specific_skuallocation_reserved_instance_properties.dart';

class FutureReservationSpecificSKUProperties {
  /// Properties of the SKU instances being reserved.
  final AllocationSpecificSKUAllocationReservedInstanceProperties?
      instanceProperties;

  /// The instance template that will be used to populate the ReservedInstanceProperties of the future reservation
  final String? sourceInstanceTemplate;

  /// Total number of instances for which capacity assurance is requested at a future time period.
  final String? totalCount;

  FutureReservationSpecificSKUProperties({
    this.instanceProperties,
    this.sourceInstanceTemplate,
    this.totalCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instancePropertiesValue = instanceProperties;
    if (instancePropertiesValue != null) {
      map['instanceProperties'] = instancePropertiesValue.toMap();
    }
    final sourceInstanceTemplateValue = sourceInstanceTemplate;
    if (sourceInstanceTemplateValue != null) {
      map['sourceInstanceTemplate'] = sourceInstanceTemplateValue;
    }
    final totalCountValue = totalCount;
    if (totalCountValue != null) {
      map['totalCount'] = totalCountValue;
    }
    return map;
  }

  factory FutureReservationSpecificSKUProperties.fromMap(
      Map<String, dynamic> map) {
    return FutureReservationSpecificSKUProperties(
      instanceProperties: map['instanceProperties'] == null
          ? null
          : AllocationSpecificSKUAllocationReservedInstanceProperties.fromMap(
              (map['instanceProperties'] as Map).cast<String, dynamic>()),
      sourceInstanceTemplate: map['sourceInstanceTemplate'] == null
          ? null
          : map['sourceInstanceTemplate'] as String,
      totalCount:
          map['totalCount'] == null ? null : map['totalCount'] as String,
    );
  }
}
