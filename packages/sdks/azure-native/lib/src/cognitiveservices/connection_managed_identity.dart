// ignore_for_file: unused_element, unnecessary_cast


class ConnectionManagedIdentity {
  final String? clientId;
  final String? resourceId;

  /// Creates a new [ConnectionManagedIdentity].
  /// [clientId] Optional.
  /// [resourceId] Optional.
  ConnectionManagedIdentity({
    this.clientId,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'resourceId': ?resourceId,
    };
  }

  factory ConnectionManagedIdentity.fromMap(Map<String, dynamic> map) {
    return ConnectionManagedIdentity(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

