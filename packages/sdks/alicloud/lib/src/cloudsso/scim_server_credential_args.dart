// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudsso_scim_server_credential_scim_server_credential_args_doc}
/// The set of arguments for ScimServerCredential.
/// {@endtemplate}
/// {@macro pulumi_cloudsso_scim_server_credential_scim_server_credential_args_doc}
class ScimServerCredentialArgs {
  /// The name of file that can save Credential ID and Credential Secret. Strongly suggest you to specified it when you creating credential, otherwise, you wouldn't get its secret ever.
  final pulumi.Input<String>? credentialSecretFile;
  /// The ID of the Directory.
  final pulumi.Input<String> directoryId;
  /// The status of the SCIM Server Credential. Valid values: `Enabled`, `Disabled`.
  final pulumi.Input<String>? status;

  /// Creates a new [ScimServerCredentialArgs].
  /// [credentialSecretFile] The name of file that can save Credential ID and Credential Secret. Strongly suggest you to specified it when you creating credential, otherwise, you wouldn't get its secret ever.
  /// [directoryId] The ID of the Directory.
  /// [status] The status of the SCIM Server Credential. Valid values: `Enabled`, `Disabled`.
  ScimServerCredentialArgs({
    pulumi.Output<String>? credentialSecretFile,
    required pulumi.Output<String> directoryId,
    pulumi.Output<String>? status,
  }) :
      credentialSecretFile = pulumi.Input.asOptionalInput<String>(credentialSecretFile),
      directoryId = pulumi.Input.asInput<String>(directoryId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialSecretFile': ?credentialSecretFile,
      'directoryId': directoryId,
      'status': ?status,
    };
  }

  factory ScimServerCredentialArgs.fromMap(Map<String, dynamic> map) {
    return ScimServerCredentialArgs(
      credentialSecretFile: map['credentialSecretFile'] == null ? null : pulumi.Output.create<String>(map['credentialSecretFile'] as String),
      directoryId: pulumi.Output.create<String>(map['directoryId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

