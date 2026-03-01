// ignore_for_file: unused_element, unnecessary_cast


/// Cosmos DB capability object
class CapabilityResponse {
  /// Name of the Cosmos DB capability. For example, "name": "EnableCassandra". Current values also include "EnableTable" and "EnableGremlin".
  final String? name;

  /// Creates a new [CapabilityResponse].
  /// [name] Name of the Cosmos DB capability. For example, "name": "EnableCassandra". Current values also include "EnableTable" and "EnableGremlin".
  CapabilityResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory CapabilityResponse.fromMap(Map<String, dynamic> map) {
    return CapabilityResponse(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

