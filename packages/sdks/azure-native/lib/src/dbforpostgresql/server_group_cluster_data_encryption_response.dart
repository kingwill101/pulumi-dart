// ignore_for_file: unused_element, unnecessary_cast


/// The data encryption properties of a cluster.
class ServerGroupClusterDataEncryptionResponse {
  /// URI for the key in keyvault for data encryption of the primary server.
  final String? primaryKeyUri;
  /// Resource Id for the User assigned identity to be used for data encryption of the primary server.
  final String? primaryUserAssignedIdentityId;
  final String? type;

  /// Creates a new [ServerGroupClusterDataEncryptionResponse].
  /// [primaryKeyUri] URI for the key in keyvault for data encryption of the primary server.
  /// [primaryUserAssignedIdentityId] Resource Id for the User assigned identity to be used for data encryption of the primary server.
  /// [type] Optional.
  ServerGroupClusterDataEncryptionResponse({
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

  factory ServerGroupClusterDataEncryptionResponse.fromMap(Map<String, dynamic> map) {
    return ServerGroupClusterDataEncryptionResponse(
      primaryKeyUri: map['primaryKeyUri'] == null ? null : map['primaryKeyUri'] as String,
      primaryUserAssignedIdentityId: map['primaryUserAssignedIdentityId'] == null ? null : map['primaryUserAssignedIdentityId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

