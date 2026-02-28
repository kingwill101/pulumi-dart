// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRegion.
class GetRegionResult {
  /// Region's description in this format: "Location (Region name)".
  final String description;
  final String endpoint;
  /// Region's name (e.g. `us-east-1`).
  final String id;
  final String name;
  final String region;

  /// Creates a new [GetRegionResult].
  /// [description] Region's description in this format: "Location (Region name)".
  /// [endpoint] Required.
  /// [id] Region's name (e.g. `us-east-1`).
  /// [name] Required.
  /// [region] Required.
  GetRegionResult({
    required this.description,
    required this.endpoint,
    required this.id,
    required this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'endpoint': endpoint,
      'id': id,
      'name': name,
      'region': region,
    };
  }

  factory GetRegionResult.fromMap(Map<String, dynamic> map) {
    return GetRegionResult(
      description: map['description'] as String,
      endpoint: map['endpoint'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
    );
  }
}

