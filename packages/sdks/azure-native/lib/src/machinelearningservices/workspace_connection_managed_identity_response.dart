// ignore_for_file: unused_element, unnecessary_cast


class WorkspaceConnectionManagedIdentityResponse {
  final String? clientId;
  final String? resourceId;

  /// Creates a new [WorkspaceConnectionManagedIdentityResponse].
  /// [clientId] Optional.
  /// [resourceId] Optional.
  WorkspaceConnectionManagedIdentityResponse({
    this.clientId,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'resourceId': ?resourceId,
    };
  }

  factory WorkspaceConnectionManagedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return WorkspaceConnectionManagedIdentityResponse(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

