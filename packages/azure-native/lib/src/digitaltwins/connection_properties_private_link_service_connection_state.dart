// ignore_for_file: unused_element, unnecessary_cast


/// The connection state.
class ConnectionPropertiesPrivateLinkServiceConnectionState {
  /// Actions required for a private endpoint connection.
  final String? actionsRequired;
  /// The description for the current state of a private endpoint connection.
  final String description;
  /// The status of a private endpoint connection.
  final String status;

  /// Creates a new [ConnectionPropertiesPrivateLinkServiceConnectionState].
  /// [actionsRequired] Actions required for a private endpoint connection.
  /// [description] The description for the current state of a private endpoint connection.
  /// [status] The status of a private endpoint connection.
  ConnectionPropertiesPrivateLinkServiceConnectionState({
    this.actionsRequired,
    required this.description,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionsRequired': ?actionsRequired,
      'description': description,
      'status': status,
    };
  }

  factory ConnectionPropertiesPrivateLinkServiceConnectionState.fromMap(Map<String, dynamic> map) {
    return ConnectionPropertiesPrivateLinkServiceConnectionState(
      actionsRequired: map['actionsRequired'] == null ? null : map['actionsRequired'] as String,
      description: map['description'] as String,
      status: map['status'] as String,
    );
  }
}

