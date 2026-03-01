// ignore_for_file: unused_element, unnecessary_cast


/// Cosmos DB capability object
class Capability {
  /// Name of the Cosmos DB capability. For example, "name": "EnableCassandra". Current values also include "EnableTable" and "EnableGremlin".
  final String? name;

  /// Creates a new [Capability].
  /// [name] Name of the Cosmos DB capability. For example, "name": "EnableCassandra". Current values also include "EnableTable" and "EnableGremlin".
  Capability({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory Capability.fromMap(Map<String, dynamic> map) {
    return Capability(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

