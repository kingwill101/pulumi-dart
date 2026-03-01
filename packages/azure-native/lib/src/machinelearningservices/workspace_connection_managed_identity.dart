// ignore_for_file: unused_element, unnecessary_cast


class WorkspaceConnectionManagedIdentity {
  final String? clientId;
  final String? resourceId;

  /// Creates a new [WorkspaceConnectionManagedIdentity].
  /// [clientId] Optional.
  /// [resourceId] Optional.
  WorkspaceConnectionManagedIdentity({
    this.clientId,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'resourceId': ?resourceId,
    };
  }

  factory WorkspaceConnectionManagedIdentity.fromMap(Map<String, dynamic> map) {
    return WorkspaceConnectionManagedIdentity(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

