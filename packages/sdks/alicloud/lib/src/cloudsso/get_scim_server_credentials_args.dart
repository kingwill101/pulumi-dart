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
    required this.directoryId,
    this.ids,
    this.outputFile,
    this.status,
  });

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
      directoryId: pulumi.Input.fromValue(map['directoryId'] as String),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
