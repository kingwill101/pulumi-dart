// ignore_for_file: unused_element, unnecessary_cast


class IoTHubSharedAccessPolicy {
  /// The name of the shared access policy.
  final String? keyName;
  /// The permissions assigned to the shared access policy.
  final String? permissions;
  /// The primary key.
  final String? primaryKey;
  /// The secondary key.
  final String? secondaryKey;

  /// Creates a new [IoTHubSharedAccessPolicy].
  /// [keyName] The name of the shared access policy.
  /// [permissions] The permissions assigned to the shared access policy.
  /// [primaryKey] The primary key.
  /// [secondaryKey] The secondary key.
  IoTHubSharedAccessPolicy({
    this.keyName,
    this.permissions,
    this.primaryKey,
    this.secondaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': ?keyName,
      'permissions': ?permissions,
      'primaryKey': ?primaryKey,
      'secondaryKey': ?secondaryKey,
    };
  }

  factory IoTHubSharedAccessPolicy.fromMap(Map<String, dynamic> map) {
    return IoTHubSharedAccessPolicy(
      keyName: map['keyName'] == null ? null : map['keyName'] as String,
      permissions: map['permissions'] == null ? null : map['permissions'] as String,
      primaryKey: map['primaryKey'] == null ? null : map['primaryKey'] as String,
      secondaryKey: map['secondaryKey'] == null ? null : map['secondaryKey'] as String,
    );
  }
}

