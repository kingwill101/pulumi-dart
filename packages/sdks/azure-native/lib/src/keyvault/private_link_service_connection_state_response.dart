// ignore_for_file: unused_element, unnecessary_cast


/// An object that represents the approval state of the private link connection.
class PrivateLinkServiceConnectionStateResponse {
  /// A message indicating if changes on the service provider require any updates on the consumer.
  final String? actionsRequired;
  /// The reason for approval or rejection.
  final String? description;
  /// Indicates whether the connection has been approved, rejected or removed by the key vault owner.
  final String? status;

  /// Creates a new [PrivateLinkServiceConnectionStateResponse].
  /// [actionsRequired] A message indicating if changes on the service provider require any updates on the consumer.
  /// [description] The reason for approval or rejection.
  /// [status] Indicates whether the connection has been approved, rejected or removed by the key vault owner.
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

