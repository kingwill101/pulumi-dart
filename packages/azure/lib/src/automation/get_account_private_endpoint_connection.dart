// ignore_for_file: unused_element, unnecessary_cast


class GetAccountPrivateEndpointConnection {
  /// The ID of the Automation Account
  final String id;
  /// The name of the Automation Account.
  final String name;

  /// Creates a new [GetAccountPrivateEndpointConnection].
  /// [id] The ID of the Automation Account
  /// [name] The name of the Automation Account.
  GetAccountPrivateEndpointConnection({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory GetAccountPrivateEndpointConnection.fromMap(Map<String, dynamic> map) {
    return GetAccountPrivateEndpointConnection(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}

