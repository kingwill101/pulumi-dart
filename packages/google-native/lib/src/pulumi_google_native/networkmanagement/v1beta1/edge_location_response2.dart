// ignore_for_file: unused_element, unnecessary_cast

/// Representation of a network edge location as per https://cloud.google.com/vpc/docs/edge-locations.
class EdgeLocationResponse2 {
  /// Name of the metropolitan area.
  final String metropolitanArea;

  EdgeLocationResponse2({
    required this.metropolitanArea,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metropolitanArea'] = metropolitanArea;
    return map;
  }

  factory EdgeLocationResponse2.fromMap(Map<String, dynamic> map) {
    return EdgeLocationResponse2(
      metropolitanArea: map['metropolitanArea'] as String,
    );
  }
}
