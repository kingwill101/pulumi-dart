// ignore_for_file: unused_element, unnecessary_cast

class WireGroupTopologyEndpoint {
  /// (Output)
  final String? city;

  /// (Output)
  final String? label;

  WireGroupTopologyEndpoint({
    this.city,
    this.label,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cityValue = city;
    if (cityValue != null) {
      map['city'] = cityValue;
    }
    final labelValue = label;
    if (labelValue != null) {
      map['label'] = labelValue;
    }
    return map;
  }

  factory WireGroupTopologyEndpoint.fromMap(Map<String, dynamic> map) {
    return WireGroupTopologyEndpoint(
      city: map['city'] == null ? null : map['city'] as String,
      label: map['label'] == null ? null : map['label'] as String,
    );
  }
}
