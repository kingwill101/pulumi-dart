// ignore_for_file: unused_element, unnecessary_cast


class ServerPrivateLinkServiceConnectionStatePropertyResponse {
  /// The actions required for private link service connection.
  final String actionsRequired;
  /// The private link service connection description.
  final String description;
  /// The private link service connection status.
  final String status;

  /// Creates a new [ServerPrivateLinkServiceConnectionStatePropertyResponse].
  /// [actionsRequired] The actions required for private link service connection.
  /// [description] The private link service connection description.
  /// [status] The private link service connection status.
  ServerPrivateLinkServiceConnectionStatePropertyResponse({
    required this.actionsRequired,
    required this.description,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionsRequired': actionsRequired,
      'description': description,
      'status': status,
    };
  }

  factory ServerPrivateLinkServiceConnectionStatePropertyResponse.fromMap(Map<String, dynamic> map) {
    return ServerPrivateLinkServiceConnectionStatePropertyResponse(
      actionsRequired: map['actionsRequired'] as String,
      description: map['description'] as String,
      status: map['status'] as String,
    );
  }
}

