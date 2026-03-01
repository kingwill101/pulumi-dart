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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? credentialId,
    pulumi.Output<String>? credentialSecretFile,
    pulumi.Output<String>? credentialType,
    pulumi.Output<String>? directoryId,
    pulumi.Output<String>? expireTime,
    pulumi.Output<String>? status,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      credentialId = pulumi.Input.asOptionalInput<String>(credentialId),
      credentialSecretFile = pulumi.Input.asOptionalInput<String>(credentialSecretFile),
      credentialType = pulumi.Input.asOptionalInput<String>(credentialType),
      directoryId = pulumi.Input.asOptionalInput<String>(directoryId),
      expireTime = pulumi.Input.asOptionalInput<String>(expireTime),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      credentialId: map['credentialId'] == null ? null : pulumi.Output.create<String>(map['credentialId'] as String),
      credentialSecretFile: map['credentialSecretFile'] == null ? null : pulumi.Output.create<String>(map['credentialSecretFile'] as String),
      credentialType: map['credentialType'] == null ? null : pulumi.Output.create<String>(map['credentialType'] as String),
      directoryId: map['directoryId'] == null ? null : pulumi.Output.create<String>(map['directoryId'] as String),
      expireTime: map['expireTime'] == null ? null : pulumi.Output.create<String>(map['expireTime'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

