// ignore_for_file: unused_element, unnecessary_cast


/// Source or target connection reference details.
class MapperConnectionReference {
  /// Name of the connection
  final String? connectionName;
  /// Type of connection via linked service or dataset.
  final String? type;

  /// Creates a new [MapperConnectionReference].
  /// [connectionName] Name of the connection
  /// [type] Type of connection via linked service or dataset.
  MapperConnectionReference({
    this.connectionName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': ?connectionName,
      'type': ?type,
    };
  }

  factory MapperConnectionReference.fromMap(Map<String, dynamic> map) {
    return MapperConnectionReference(
      connectionName: map['connectionName'] == null ? null : map['connectionName'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

