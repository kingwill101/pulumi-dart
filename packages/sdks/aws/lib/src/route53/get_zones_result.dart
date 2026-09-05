// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZones.
class GetZonesResult {
  final String? id;
  /// A list of all the Route53 Hosted Zone IDs found.
  final List<String>? ids;

  /// Creates a new [GetZonesResult].
  /// [id] Optional.
  /// [ids] A list of all the Route53 Hosted Zone IDs found.
  const GetZonesResult({
    this.id,
    this.ids,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'ids': ?ids,
    };
  }

  factory GetZonesResult.fromMap(Map<String, dynamic> map) {
    return GetZonesResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
