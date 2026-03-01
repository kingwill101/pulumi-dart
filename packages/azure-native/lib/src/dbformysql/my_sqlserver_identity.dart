// ignore_for_file: unused_element, unnecessary_cast


/// Properties to configure Identity for Bring your Own Keys
class MySQLServerIdentity {
  /// Type of managed service identity.
  final String? type;
  /// Metadata of user assigned identity.
  final List<String>? userAssignedIdentities;

  /// Creates a new [MySQLServerIdentity].
  /// [type] Type of managed service identity.
  /// [userAssignedIdentities] Metadata of user assigned identity.
  MySQLServerIdentity({
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory MySQLServerIdentity.fromMap(Map<String, dynamic> map) {
    return MySQLServerIdentity(
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (map['userAssignedIdentities'] as List).cast<String>(),
    );
  }
}

