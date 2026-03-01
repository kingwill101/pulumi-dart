// ignore_for_file: unused_element, unnecessary_cast


/// Subnet information as returned by the Microsoft.Network API.
class ExternalSubnetResponse {
  /// Gets or sets the identifier.
  final String? id;
  /// Gets or sets the name.
  final String? name;

  /// Creates a new [ExternalSubnetResponse].
  /// [id] Gets or sets the identifier.
  /// [name] Gets or sets the name.
  ExternalSubnetResponse({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory ExternalSubnetResponse.fromMap(Map<String, dynamic> map) {
    return ExternalSubnetResponse(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

