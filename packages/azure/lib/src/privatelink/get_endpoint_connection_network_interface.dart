// ignore_for_file: unused_element, unnecessary_cast


class GetEndpointConnectionNetworkInterface {
  /// The ID of the network interface associated with the private endpoint.
  final String id;
  /// Specifies the Name of the private endpoint.
  final String name;

  /// Creates a new [GetEndpointConnectionNetworkInterface].
  /// [id] The ID of the network interface associated with the private endpoint.
  /// [name] Specifies the Name of the private endpoint.
  GetEndpointConnectionNetworkInterface({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory GetEndpointConnectionNetworkInterface.fromMap(Map<String, dynamic> map) {
    return GetEndpointConnectionNetworkInterface(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}

