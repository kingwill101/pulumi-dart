// ignore_for_file: unused_element, unnecessary_cast


/// The private link service connection state.
class PrivateLinkServiceConnectionState {
  /// The required actions.
  final String? actionsRequired;
  /// The description.
  final String? description;
  /// The status.
  final String? status;

  /// Creates a new [PrivateLinkServiceConnectionState].
  /// [actionsRequired] The required actions.
  /// [description] The description.
  /// [status] The status.
  PrivateLinkServiceConnectionState({
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

  factory PrivateLinkServiceConnectionState.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceConnectionState(
      actionsRequired: map['actionsRequired'] == null ? null : map['actionsRequired'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

