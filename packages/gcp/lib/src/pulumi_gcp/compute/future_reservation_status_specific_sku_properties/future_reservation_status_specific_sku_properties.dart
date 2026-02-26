// ignore_for_file: unused_element, unnecessary_cast

class FutureReservationStatusSpecificSkuProperties {
  /// ID of the instance template used to populate the Future Reservation properties.
  final String? sourceInstanceTemplateId;

  FutureReservationStatusSpecificSkuProperties({
    this.sourceInstanceTemplateId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sourceInstanceTemplateIdValue = sourceInstanceTemplateId;
    if (sourceInstanceTemplateIdValue != null) {
      map['sourceInstanceTemplateId'] = sourceInstanceTemplateIdValue;
    }
    return map;
  }

  factory FutureReservationStatusSpecificSkuProperties.fromMap(
      Map<String, dynamic> map) {
    return FutureReservationStatusSpecificSkuProperties(
      sourceInstanceTemplateId: map['sourceInstanceTemplateId'] == null
          ? null
          : map['sourceInstanceTemplateId'] as String,
    );
  }
}
