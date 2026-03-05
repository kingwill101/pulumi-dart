// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ScimServerCredential resources.
class ScimServerCredentialState {
  /// (Available since v1.245.0) The time when the SCIM credential was created.
  final pulumi.Input<String>? createTime;
  /// The ID of the SCIM credential.
  final pulumi.Input<String>? credentialId;
  /// The name of file that can save Credential ID and Credential Secret. Strongly suggest you to specified it when you creating credential, otherwise, you wouldn't get its secret ever.
  final pulumi.Input<String>? credentialSecretFile;
  /// (Available since v1.245.0) The type of the SCIM credential.
  final pulumi.Input<String>? credentialType;
  /// The ID of the Directory.
  final pulumi.Input<String>? directoryId;
  /// (Available since v1.245.0) The time when the SCIM credential expires.
  final pulumi.Input<String>? expireTime;
  /// The status of the SCIM Server Credential. Valid values: `Enabled`, `Disabled`.
  final pulumi.Input<String>? status;

  /// Creates a new [ScimServerCredentialState].
  /// [createTime] (Available since v1.245.0) The time when the SCIM credential was created.
  /// [credentialId] The ID of the SCIM credential.
  /// [credentialSecretFile] The name of file that can save Credential ID and Credential Secret. Strongly suggest you to specified it when you creating credential, otherwise, you wouldn't get its secret ever.
  /// [credentialType] (Available since v1.245.0) The type of the SCIM credential.
  /// [directoryId] The ID of the Directory.
  /// [expireTime] (Available since v1.245.0) The time when the SCIM credential expires.
  /// [status] The status of the SCIM Server Credential. Valid values: `Enabled`, `Disabled`.
  ScimServerCredentialState({
    this.createTime,
    this.credentialId,
    this.credentialSecretFile,
    this.credentialType,
    this.directoryId,
    this.expireTime,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'credentialId': ?credentialId,
      'credentialSecretFile': ?credentialSecretFile,
      'credentialType': ?credentialType,
      'directoryId': ?directoryId,
      'expireTime': ?expireTime,
      'status': ?status,
    };
  }

  factory ScimServerCredentialState.fromMap(Map<String, dynamic> map) {
    return ScimServerCredentialState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentialId: (() { final guardedValue = map['credentialId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentialSecretFile: (() { final guardedValue = map['credentialSecretFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentialType: (() { final guardedValue = map['credentialType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      directoryId: (() { final guardedValue = map['directoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

