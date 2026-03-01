// ignore_for_file: unused_element, unnecessary_cast


/// Gets or sets private link service connection state.
class VaultPrivateLinkServiceConnectionStateResponse {
  /// Gets or sets actions required.
  final String actionsRequired;
  /// Gets or sets description.
  final String description;
  /// Gets or sets the status.
  final String status;

  /// Creates a new [VaultPrivateLinkServiceConnectionStateResponse].
  /// [actionsRequired] Gets or sets actions required.
  /// [description] Gets or sets description.
  /// [status] Gets or sets the status.
  VaultPrivateLinkServiceConnectionStateResponse({
    required this.actionsRequired,
    required this.description,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionsRequired': actionsRequired,
      'description': description,
      'status': status,
    };
  }

  factory VaultPrivateLinkServiceConnectionStateResponse.fromMap(Map<String, dynamic> map) {
    return VaultPrivateLinkServiceConnectionStateResponse(
      actionsRequired: map['actionsRequired'] as String,
      description: map['description'] as String,
      status: map['status'] as String,
    );
  }
}

