// ignore_for_file: unused_element, unnecessary_cast


/// The connection type property associated with the entity.
class ConnectionTypeAssociationPropertyResponse {
  /// Gets or sets the name of the connection type.
  final String? name;

  /// Creates a new [ConnectionTypeAssociationPropertyResponse].
  /// [name] Gets or sets the name of the connection type.
  ConnectionTypeAssociationPropertyResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory ConnectionTypeAssociationPropertyResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionTypeAssociationPropertyResponse(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

