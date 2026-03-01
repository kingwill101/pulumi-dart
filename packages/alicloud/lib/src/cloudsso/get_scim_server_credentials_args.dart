// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudsso_get_scim_server_credentials_get_scim_server_credentials_args_doc}
/// Arguments for getScimServerCredentials.
/// {@endtemplate}
/// {@macro pulumi_cloudsso_get_scim_server_credentials_get_scim_server_credentials_args_doc}
class GetScimServerCredentialsArgs {
  /// The ID of the Directory.
  final pulumi.Input<String> directoryId;
  /// A list of SCIM Server Credential IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The Status of the resource. Valid values: `Disabled`, `Enabled`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetScimServerCredentialsArgs].
  /// [directoryId] The ID of the Directory.
  /// [ids] A list of SCIM Server Credential IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The Status of the resource. Valid values: `Disabled`, `Enabled`.
  GetScimServerCredentialsArgs({
    required String directoryId,
    List<String>? ids,
    String? outputFile,
    String? status,
  }) :
      directoryId = pulumi.Input.asInput<String>(directoryId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryId': directoryId,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetScimServerCredentialsArgs.fromMap(Map<String, dynamic> map) {
    return GetScimServerCredentialsArgs(
      directoryId: map['directoryId'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

