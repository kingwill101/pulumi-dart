// ignore_for_file: unused_element, unnecessary_cast


/// The gateway installation reference
class ConnectionGatewayReferenceResponse {
  /// Resource reference id
  final String? id;
  /// Resource reference location
  final String? location;
  /// Resource reference name
  final String? name;
  /// Resource reference type
  final String? type;

  /// Creates a new [ConnectionGatewayReferenceResponse].
  /// [id] Resource reference id
  /// [location] Resource reference location
  /// [name] Resource reference name
  /// [type] Resource reference type
  ConnectionGatewayReferenceResponse({
    this.id,
    this.location,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'type': ?type,
    };
  }

  factory ConnectionGatewayReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionGatewayReferenceResponse(
      id: map['id'] == null ? null : map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

