// ignore_for_file: unused_element, unnecessary_cast

/// ConnectionStatus indicates the state of the connection.
class ConnectionStatusResponse {
  /// Description.
  final String description;

  /// State.
  final String state;

  /// Status provides detailed information for the state.
  final String status;

  /// Creates a new [ConnectionStatusResponse].
  /// [description] Description.
  /// [state] State.
  /// [status] Status provides detailed information for the state.
  ConnectionStatusResponse({
    required this.description,
    required this.state,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'state': state,
      'status': status,
    };
  }

  factory ConnectionStatusResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionStatusResponse(
      description: map['description'] as String,
      state: map['state'] as String,
      status: map['status'] as String,
    );
  }
}
