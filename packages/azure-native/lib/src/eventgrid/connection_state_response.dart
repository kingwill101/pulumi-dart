// ignore_for_file: unused_element, unnecessary_cast


/// ConnectionState information.
class ConnectionStateResponse {
  /// Actions required (if any).
  final String? actionsRequired;
  /// Description of the connection state.
  final String? description;
  /// Status of the connection.
  final String? status;

  /// Creates a new [ConnectionStateResponse].
  /// [actionsRequired] Actions required (if any).
  /// [description] Description of the connection state.
  /// [status] Status of the connection.
  ConnectionStateResponse({
    this.actionsRequired,
    this.description,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionsRequired': ?actionsRequired,
      'description': ?description,
      'status': ?status,
    };
  }

  factory ConnectionStateResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionStateResponse(
      actionsRequired: map['actionsRequired'] == null ? null : map['actionsRequired'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

