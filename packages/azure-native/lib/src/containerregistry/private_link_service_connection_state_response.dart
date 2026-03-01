// ignore_for_file: unused_element, unnecessary_cast


/// The state of a private link service connection.
class PrivateLinkServiceConnectionStateResponse {
  /// A message indicating if changes on the service provider require any updates on the consumer.
  final String? actionsRequired;
  /// The description for connection status. For example if connection is rejected it can indicate reason for rejection.
  final String? description;
  /// The private link service connection status.
  final String? status;

  /// Creates a new [PrivateLinkServiceConnectionStateResponse].
  /// [actionsRequired] A message indicating if changes on the service provider require any updates on the consumer.
  /// [description] The description for connection status. For example if connection is rejected it can indicate reason for rejection.
  /// [status] The private link service connection status.
  PrivateLinkServiceConnectionStateResponse({
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

  factory PrivateLinkServiceConnectionStateResponse.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceConnectionStateResponse(
      actionsRequired: map['actionsRequired'] == null ? null : map['actionsRequired'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

