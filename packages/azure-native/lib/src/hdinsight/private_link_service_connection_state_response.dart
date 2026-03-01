// ignore_for_file: unused_element, unnecessary_cast


/// The private link service connection state.
class PrivateLinkServiceConnectionStateResponse {
  /// Whether there is further actions.
  final String? actionsRequired;
  /// The optional description of the status.
  final String? description;
  /// The concrete private link service connection.
  final String status;

  /// Creates a new [PrivateLinkServiceConnectionStateResponse].
  /// [actionsRequired] Whether there is further actions.
  /// [description] The optional description of the status.
  /// [status] The concrete private link service connection.
  PrivateLinkServiceConnectionStateResponse({
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

  factory PrivateLinkServiceConnectionStateResponse.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceConnectionStateResponse(
      actionsRequired: map['actionsRequired'] == null ? null : map['actionsRequired'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      status: map['status'] as String,
    );
  }
}

