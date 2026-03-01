// ignore_for_file: unused_element, unnecessary_cast

import 'future_reservation_specific_sku_properties_instance_properties.dart';

class FutureReservationSpecificSkuProperties {
  /// Properties of the SKU instances being reserved.
  /// Structure is documented below.
  final FutureReservationSpecificSkuPropertiesInstanceProperties?
  instanceProperties;

  /// The instance template that will be used to populate the ReservedInstanceProperties of the future reservation
  final String? sourceInstanceTemplate;

  /// Total number of instances for which capacity assurance is requested at a future time period.
  final String? totalCount;

  /// Creates a new [FutureReservationSpecificSkuProperties].
  /// [instanceProperties] Properties of the SKU instances being reserved.
  /// [sourceInstanceTemplate] The instance template that will be used to populate the ReservedInstanceProperties of the future reservation
  /// [totalCount] Total number of instances for which capacity assurance is requested at a future time period.
  FutureReservationSpecificSkuProperties({
    this.instanceProperties,
    this.sourceInstanceTemplate,
    this.totalCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceProperties': ?instanceProperties == null
          ? null
          : instanceProperties!.toMap(),
      'sourceInstanceTemplate': ?sourceInstanceTemplate,
      'totalCount': ?totalCount,
    };
  }

  factory FutureReservationSpecificSkuProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return FutureReservationSpecificSkuProperties(
      instanceProperties: map['instanceProperties'] == null
          ? null
          : FutureReservationSpecificSkuPropertiesInstanceProperties.fromMap(
              (map['instanceProperties'] as Map).cast<String, dynamic>(),
            ),
      sourceInstanceTemplate: map['sourceInstanceTemplate'] == null
          ? null
          : map['sourceInstanceTemplate'] as String,
      totalCount: map['totalCount'] == null
          ? null
          : map['totalCount'] as String,
    );
  }
}
