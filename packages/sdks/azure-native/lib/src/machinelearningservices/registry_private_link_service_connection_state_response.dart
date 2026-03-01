// ignore_for_file: unused_element, unnecessary_cast


/// The connection state.
class RegistryPrivateLinkServiceConnectionStateResponse {
  /// Some RP chose "None". Other RPs use this for region expansion.
  final String? actionsRequired;
  /// User-defined message that, per NRP doc, may be used for approval-related message.
  final String? description;
  /// Connection status of the service consumer with the service provider
  final String? status;

  /// Creates a new [RegistryPrivateLinkServiceConnectionStateResponse].
  /// [actionsRequired] Some RP chose "None". Other RPs use this for region expansion.
  /// [description] User-defined message that, per NRP doc, may be used for approval-related message.
  /// [status] Connection status of the service consumer with the service provider
  RegistryPrivateLinkServiceConnectionStateResponse({
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

  factory RegistryPrivateLinkServiceConnectionStateResponse.fromMap(Map<String, dynamic> map) {
    return RegistryPrivateLinkServiceConnectionStateResponse(
      actionsRequired: map['actionsRequired'] == null ? null : map['actionsRequired'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

