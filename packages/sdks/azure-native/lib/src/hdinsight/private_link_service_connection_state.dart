// ignore_for_file: unused_element, unnecessary_cast


/// The private link service connection state.
class PrivateLinkServiceConnectionState {
  /// Whether there is further actions.
  final String? actionsRequired;
  /// The optional description of the status.
  final String? description;
  /// The concrete private link service connection.
  final String status;

  /// Creates a new [PrivateLinkServiceConnectionState].
  /// [actionsRequired] Whether there is further actions.
  /// [description] The optional description of the status.
  /// [status] The concrete private link service connection.
  PrivateLinkServiceConnectionState({
    this.actionsRequired,
    this.description,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionsRequired': ?actionsRequired,
      'description': ?description,
      'status': status,
    };
  }

  factory PrivateLinkServiceConnectionState.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceConnectionState(
      actionsRequired: map['actionsRequired'] == null ? null : map['actionsRequired'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      status: map['status'] as String,
    );
  }
}

