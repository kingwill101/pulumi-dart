// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIpset.
class GetIpsetResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? region;

  /// Creates a new [GetIpsetResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [region] Optional.
  const GetIpsetResult({
    this.id,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GetIpsetResult.fromMap(Map<String, dynamic> map) {
    return GetIpsetResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
