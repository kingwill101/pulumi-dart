// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The data encryption properties of a cluster.
class ServerGroupClusterDataEncryption {
  /// URI for the key in keyvault for data encryption of the primary server.
  final pulumi.Input<String>? primaryKeyUri;
  /// Resource Id for the User assigned identity to be used for data encryption of the primary server.
  final pulumi.Input<String>? primaryUserAssignedIdentityId;
  final pulumi.Input<String>? type;

  /// Creates a new [ServerGroupClusterDataEncryption].
  /// [primaryKeyUri] URI for the key in keyvault for data encryption of the primary server.
  /// [primaryUserAssignedIdentityId] Resource Id for the User assigned identity to be used for data encryption of the primary server.
  /// [type] Optional.
  const ServerGroupClusterDataEncryption({
    this.primaryKeyUri,
    this.primaryUserAssignedIdentityId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryKeyUri': ?primaryKeyUri,
      'primaryUserAssignedIdentityId': ?primaryUserAssignedIdentityId,
      'type': ?type,
    };
  }

  factory ServerGroupClusterDataEncryption.fromMap(Map<String, dynamic> map) {
    return ServerGroupClusterDataEncryption(
      primaryKeyUri: (() { final guardedValue = map['primaryKeyUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryUserAssignedIdentityId: (() { final guardedValue = map['primaryUserAssignedIdentityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
