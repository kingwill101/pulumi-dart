// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZones.
class GetZonesResult {
  final String id;
  /// A list of all the Route53 Hosted Zone IDs found.
  final List<String> ids;

  /// Creates a new [GetZonesResult].
  /// [id] Required.
  /// [ids] A list of all the Route53 Hosted Zone IDs found.
  const GetZonesResult({
    required this.id,
    required this.ids,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
    };
  }

  factory GetZonesResult.fromMap(Map<String, dynamic> map) {
    return GetZonesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
    );
  }
}

