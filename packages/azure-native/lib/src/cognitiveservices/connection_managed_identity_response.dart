// ignore_for_file: unused_element, unnecessary_cast


class ConnectionManagedIdentityResponse {
  final String? clientId;
  final String? resourceId;

  /// Creates a new [ConnectionManagedIdentityResponse].
  /// [clientId] Optional.
  /// [resourceId] Optional.
  ConnectionManagedIdentityResponse({
    this.clientId,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'resourceId': ?resourceId,
    };
  }

  factory ConnectionManagedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionManagedIdentityResponse(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

