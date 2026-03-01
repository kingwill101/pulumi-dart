// ignore_for_file: unused_element, unnecessary_cast


/// The private link service connection state of the private endpoint connection
class PrivateLinkServiceConnectionStateResponse {
  /// Action required on the private connection state
  final String actionsRequired;
  /// Description of the private Connection state
  final String? description;
  /// The status of the Batch private endpoint connection
  final String status;

  /// Creates a new [PrivateLinkServiceConnectionStateResponse].
  /// [actionsRequired] Action required on the private connection state
  /// [description] Description of the private Connection state
  /// [status] The status of the Batch private endpoint connection
  PrivateLinkServiceConnectionStateResponse({
    required this.actionsRequired,
    this.description,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionsRequired': actionsRequired,
      'description': ?description,
      'status': status,
    };
  }

  factory PrivateLinkServiceConnectionStateResponse.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceConnectionStateResponse(
      actionsRequired: map['actionsRequired'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      status: map['status'] as String,
    );
  }
}

