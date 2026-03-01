// ignore_for_file: unused_element, unnecessary_cast

/// Properties to be set for the Future Reservation.
class FutureReservationStatusSpecificSKUPropertiesResponse {
  /// ID of the instance template used to populate the Future Reservation properties.
  final String sourceInstanceTemplateId;

  /// Creates a new [FutureReservationStatusSpecificSKUPropertiesResponse].
  /// [sourceInstanceTemplateId] ID of the instance template used to populate the Future Reservation properties.
  FutureReservationStatusSpecificSKUPropertiesResponse({
    required this.sourceInstanceTemplateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceInstanceTemplateId': sourceInstanceTemplateId,
    };
  }

  factory FutureReservationStatusSpecificSKUPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return FutureReservationStatusSpecificSKUPropertiesResponse(
      sourceInstanceTemplateId: map['sourceInstanceTemplateId'] as String,
    );
  }
}
