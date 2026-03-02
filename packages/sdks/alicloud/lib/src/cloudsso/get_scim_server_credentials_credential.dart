// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetScimServerCredentialsCredential {
  /// The CreateTime of the resource.
  final pulumi.Input<String> createTime;
  /// The CredentialId of the resource.
  final pulumi.Input<String> credentialId;
  /// The CredentialSecret of the resource.
  final pulumi.Input<String> credentialSecret;
  /// The CredentialType of the resource.
  final pulumi.Input<String> credentialType;
  /// The ID of the Directory.
  final pulumi.Input<String> directoryId;
  /// The ExpireTime of the resource.
  final pulumi.Input<String> expireTime;
  /// The ID of the SCIM Server Credential.
  final pulumi.Input<String> id;
  /// The Status of the resource. Valid values: `Disabled`, `Enabled`.
  final pulumi.Input<String> status;

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
      createTime: (map['createTime'] as String).input(),
      credentialId: (map['credentialId'] as String).input(),
      credentialSecret: (map['credentialSecret'] as String).input(),
      credentialType: (map['credentialType'] as String).input(),
      directoryId: (map['directoryId'] as String).input(),
      expireTime: (map['expireTime'] as String).input(),
      id: (map['id'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

