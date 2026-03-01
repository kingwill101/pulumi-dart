// ignore_for_file: unused_element, unnecessary_cast


/// Database Identity properties.
class DatabaseIdentity {
  /// Client Id of the database identity.
  final String? clientId;
  /// Principal Id of the database identity.
  final String? principalId;
  /// Resource Id of the database identity.
  final String? resourceId;

  /// Creates a new [DatabaseIdentity].
  /// [clientId] Client Id of the database identity.
  /// [principalId] Principal Id of the database identity.
  /// [resourceId] Resource Id of the database identity.
  DatabaseIdentity({
    this.clientId,
    this.principalId,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'principalId': ?principalId,
      'resourceId': ?resourceId,
    };
  }

  factory DatabaseIdentity.fromMap(Map<String, dynamic> map) {
    return DatabaseIdentity(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

