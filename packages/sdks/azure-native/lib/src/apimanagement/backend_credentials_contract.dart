// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_authorization_header_credentials.dart';

/// Details of the Credentials used to connect to Backend.
class BackendCredentialsContract {
  /// Authorization header authentication
  final pulumi.Input<BackendAuthorizationHeaderCredentials>? authorization;

  /// List of Client Certificate Thumbprints. Will be ignored if certificatesIds are provided.
  final pulumi.Input<List<String>>? certificate;

  /// List of Client Certificate Ids.
  final pulumi.Input<List<String>>? certificateIds;

  /// Header Parameter description.
  final pulumi.Input<Map<String, List<String>>>? header;

  /// Query Parameter description.
  final pulumi.Input<Map<String, List<String>>>? query;

  /// Creates a new [BackendCredentialsContract].
  /// [authorization] Authorization header authentication
  /// [certificate] List of Client Certificate Thumbprints. Will be ignored if certificatesIds are provided.
  /// [certificateIds] List of Client Certificate Ids.
  /// [header] Header Parameter description.
  /// [query] Query Parameter description.
  BackendCredentialsContract({
    this.authorization,
    this.certificate,
    this.certificateIds,
    this.header,
    this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorization':
          ?pulumi.Input.mapOptionalInputValue<
            BackendAuthorizationHeaderCredentials,
            Map<String, dynamic>
          >(authorization, (value) => value.toMap()),
      'certificate': ?certificate,
      'certificateIds': ?certificateIds,
      'header': ?header,
      'query': ?query,
    };
  }

  factory BackendCredentialsContract.fromMap(Map<String, dynamic> map) {
    return BackendCredentialsContract(
      authorization: (() {
        final guardedValue = map['authorization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BackendAuthorizationHeaderCredentials.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      certificate: (() {
        final guardedValue = map['certificate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      certificateIds: (() {
        final guardedValue = map['certificateIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      header: (() {
        final guardedValue = map['header'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, List<String>>(),
        );
      })(),
      query: (() {
        final guardedValue = map['query'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, List<String>>(),
        );
      })(),
    );
  }
}
