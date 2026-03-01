// ignore_for_file: unused_element, unnecessary_cast


/// The current state of a private endpoint connection
class PrivateLinkServiceConnectionStateResponse {
  /// Actions required for a private endpoint connection
  final String? actionsRequired;
  /// The description for the current state of a private endpoint connection
  final String description;
  /// The status of a private endpoint connection
  final String status;

  /// Creates a new [PrivateLinkServiceConnectionStateResponse].
  /// [actionsRequired] Actions required for a private endpoint connection
  /// [description] The description for the current state of a private endpoint connection
  /// [status] The status of a private endpoint connection
  PrivateLinkServiceConnectionStateResponse({
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

  factory PrivateLinkServiceConnectionStateResponse.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceConnectionStateResponse(
      actionsRequired: map['actionsRequired'] == null ? null : map['actionsRequired'] as String,
      description: map['description'] as String,
      status: map['status'] as String,
    );
  }
}

