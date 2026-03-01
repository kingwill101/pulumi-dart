// ignore_for_file: unused_element, unnecessary_cast


class GetScimServerCredentialsCredential {
  /// The CreateTime of the resource.
  final String createTime;
  /// The CredentialId of the resource.
  final String credentialId;
  /// The CredentialSecret of the resource.
  final String credentialSecret;
  /// The CredentialType of the resource.
  final String credentialType;
  /// The ID of the Directory.
  final String directoryId;
  /// The ExpireTime of the resource.
  final String expireTime;
  /// The ID of the SCIM Server Credential.
  final String id;
  /// The Status of the resource. Valid values: `Disabled`, `Enabled`.
  final String status;

  /// Creates a new [GetScimServerCredentialsCredential].
  /// [createTime] The CreateTime of the resource.
  /// [credentialId] The CredentialId of the resource.
  /// [credentialSecret] The CredentialSecret of the resource.
  /// [credentialType] The CredentialType of the resource.
  /// [directoryId] The ID of the Directory.
  /// [expireTime] The ExpireTime of the resource.
  /// [id] The ID of the SCIM Server Credential.
  /// [status] The Status of the resource. Valid values: `Disabled`, `Enabled`.
  GetScimServerCredentialsCredential({
    required this.createTime,
    required this.credentialId,
    required this.credentialSecret,
    required this.credentialType,
    required this.directoryId,
    required this.expireTime,
    required this.id,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'credentialId': credentialId,
      'credentialSecret': credentialSecret,
      'credentialType': credentialType,
      'directoryId': directoryId,
      'expireTime': expireTime,
      'id': id,
      'status': status,
    };
  }

  factory GetScimServerCredentialsCredential.fromMap(Map<String, dynamic> map) {
    return GetScimServerCredentialsCredential(
      createTime: map['createTime'] as String,
      credentialId: map['credentialId'] as String,
      credentialSecret: map['credentialSecret'] as String,
      credentialType: map['credentialType'] as String,
      directoryId: map['directoryId'] as String,
      expireTime: map['expireTime'] as String,
      id: map['id'] as String,
      status: map['status'] as String,
    );
  }
}

