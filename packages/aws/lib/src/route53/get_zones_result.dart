// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getZones.
class GetZonesResult {
  final String id;

  /// A list of all the Route53 Hosted Zone IDs found.
  final List<String> ids;

  /// Creates a new [GetZonesResult].
  /// [id] Required.
  /// [ids] A list of all the Route53 Hosted Zone IDs found.
  GetZonesResult({
    required this.id,
    required this.ids,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['ids'] = ids;
    return map;
  }

  factory GetZonesResult.fromMap(Map<String, dynamic> map) {
    return GetZonesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
    );
  }
}
