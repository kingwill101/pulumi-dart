// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRegion.
class GetRegionResult {
  /// Region's description in this format: "Location (Region name)".
  final String? description;
  final String? endpoint;
  /// (**Deprecated**) Region's name (e.g. `us-east-1`).
  final String? id;
  final String? name;
  final String? region;

  /// Creates a new [GetRegionResult].
  /// [description] Region's description in this format: "Location (Region name)".
  /// [endpoint] Optional.
  /// [id] (**Deprecated**) Region's name (e.g. `us-east-1`).
  /// [name] Optional.
  /// [region] Optional.
  const GetRegionResult({
    this.description,
    this.endpoint,
    this.id,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'endpoint': ?endpoint,
      'id': ?id,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GetRegionResult.fromMap(Map<String, dynamic> map) {
    return GetRegionResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
