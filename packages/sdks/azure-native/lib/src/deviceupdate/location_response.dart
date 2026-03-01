// ignore_for_file: unused_element, unnecessary_cast


class LocationResponse {
  final String? name;
  /// Whether the location is primary or failover
  final String? role;

  /// Creates a new [LocationResponse].
  /// [name] Optional.
  /// [role] Whether the location is primary or failover
  LocationResponse({
    this.name,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'role': ?role,
    };
  }

  factory LocationResponse.fromMap(Map<String, dynamic> map) {
    return LocationResponse(
      name: map['name'] == null ? null : map['name'] as String,
      role: map['role'] == null ? null : map['role'] as String,
    );
  }
}

