// ignore_for_file: unused_element, unnecessary_cast

class GetRegionInstanceTemplateReservationAffinitySpecificReservation {
  /// The key for the node affinity label.
  final String key;

  /// Corresponds to the label values of a reservation resource.
  final List<String> values;

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
