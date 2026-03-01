// ignore_for_file: unused_element, unnecessary_cast


/// ConnectionState information.
class ConnectionState {
  /// Description of the connection state.
  final String? description;
  /// Status of the connection.
  final String? status;

  /// Creates a new [ConnectionState].
  /// [description] Description of the connection state.
  /// [status] Status of the connection.
  ConnectionState({
    this.description,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'status': ?status,
    };
  }

  factory ConnectionState.fromMap(Map<String, dynamic> map) {
    return ConnectionState(
      description: map['description'] == null ? null : map['description'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

