// ignore_for_file: unused_element, unnecessary_cast

/// Properties to be set for the Future Reservation.
class FutureReservationStatusSpecificSKUPropertiesResponse2 {
  /// ID of the instance template used to populate the Future Reservation properties.
  final String sourceInstanceTemplateId;

  FutureReservationStatusSpecificSKUPropertiesResponse2({
    required this.sourceInstanceTemplateId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sourceInstanceTemplateId'] = sourceInstanceTemplateId;
    return map;
  }

  factory FutureReservationStatusSpecificSKUPropertiesResponse2.fromMap(
      Map<String, dynamic> map) {
    return FutureReservationStatusSpecificSKUPropertiesResponse2(
      sourceInstanceTemplateId: map['sourceInstanceTemplateId'] as String,
    );
  }
}
