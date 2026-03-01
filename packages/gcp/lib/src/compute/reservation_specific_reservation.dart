// ignore_for_file: unused_element, unnecessary_cast

import 'reservation_specific_reservation_instance_properties.dart';

class ReservationSpecificReservation {
  /// (Output)
  /// Indicates how many instances are actually usable currently.
  final int? assuredCount;

  /// The number of resources that are allocated.
  final int count;

  /// (Output)
  /// How many instances are in use.
  final int? inUseCount;

  /// The instance properties for the reservation.
  /// Structure is documented below.
  final ReservationSpecificReservationInstanceProperties? instanceProperties;

  /// Specifies the instance template to create the reservation. If you use this field, you must exclude the
  /// instanceProperties field.
  final String? sourceInstanceTemplate;

  /// Creates a new [ReservationSpecificReservation].
  /// [assuredCount] (Output)
  /// [count] The number of resources that are allocated.
  /// [inUseCount] (Output)
  /// [instanceProperties] The instance properties for the reservation.
  /// [sourceInstanceTemplate] Specifies the instance template to create the reservation. If you use this field, you must exclude the
  ReservationSpecificReservation({
    this.assuredCount,
    required this.count,
    this.inUseCount,
    this.instanceProperties,
    this.sourceInstanceTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assuredCount': ?assuredCount,
      'count': count,
      'inUseCount': ?inUseCount,
      'instanceProperties': ?instanceProperties == null
          ? null
          : instanceProperties!.toMap(),
      'sourceInstanceTemplate': ?sourceInstanceTemplate,
    };
  }

  factory ReservationSpecificReservation.fromMap(Map<String, dynamic> map) {
    return ReservationSpecificReservation(
      assuredCount: map['assuredCount'] == null
          ? null
          : map['assuredCount'] as int,
      count: map['count'] as int,
      inUseCount: map['inUseCount'] == null ? null : map['inUseCount'] as int,
      instanceProperties: map['instanceProperties'] == null
          ? null
          : ReservationSpecificReservationInstanceProperties.fromMap(
              (map['instanceProperties'] as Map).cast<String, dynamic>(),
            ),
      sourceInstanceTemplate: map['sourceInstanceTemplate'] == null
          ? null
          : map['sourceInstanceTemplate'] as String,
    );
  }
}
