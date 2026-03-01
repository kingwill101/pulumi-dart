// ignore_for_file: unused_element, unnecessary_cast


/// Represents Private link service connection state.
class PrivateLinkServiceConnectionStateResponse {
  /// Gets or sets actions required.
  final String? actionsRequired;
  /// Gets or sets description.
  final String? description;
  /// Gets or sets the status.
  final String? status;

  /// Creates a new [PrivateLinkServiceConnectionStateResponse].
  /// [actionsRequired] Gets or sets actions required.
  /// [description] Gets or sets description.
  /// [status] Gets or sets the status.
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

