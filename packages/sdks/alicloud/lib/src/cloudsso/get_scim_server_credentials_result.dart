// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scim_server_credentials_credential.dart';

/// Result data returned by getScimServerCredentials.
class GetScimServerCredentialsResult {
  final List<GetScimServerCredentialsCredential> credentials;
  final String directoryId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final String? status;

  /// Creates a new [GetScimServerCredentialsResult].
  /// [credentials] Required.
  /// [directoryId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [status] Optional.
  GetScimServerCredentialsResult({
    required this.credentials,
    required this.directoryId,
    required this.id,
    required this.ids,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials':
          pulumi.Input.encodeList<
            GetScimServerCredentialsCredential,
            Map<String, dynamic>
          >(credentials, (value) => value.toMap()),
      'directoryId': directoryId,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetScimServerCredentialsResult.fromMap(Map<String, dynamic> map) {
    return GetScimServerCredentialsResult(
      credentials: pulumi.Input.decodeList<GetScimServerCredentialsCredential>(
        map['credentials']!,
        (value) => GetScimServerCredentialsCredential.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      directoryId: map['directoryId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
