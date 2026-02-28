// ignore_for_file: unused_element, unnecessary_cast

class GetRegionInstanceTemplateReservationAffinitySpecificReservation {
  /// The key for the node affinity label.
  final String key;

  /// Corresponds to the label values of a reservation resource.
  final List<String> values;

  /// Creates a new [GetRegionInstanceTemplateReservationAffinitySpecificReservation].
  /// [key] The key for the node affinity label.
  /// [values] Corresponds to the label values of a reservation resource.
  GetRegionInstanceTemplateReservationAffinitySpecificReservation({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['values'] = values;
    return map;
  }

  factory GetRegionInstanceTemplateReservationAffinitySpecificReservation.fromMap(
      Map<String, dynamic> map) {
    return GetRegionInstanceTemplateReservationAffinitySpecificReservation(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
