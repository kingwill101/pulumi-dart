// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_authorization_header_credentials_response.dart';

/// Details of the Credentials used to connect to Backend.
class BackendCredentialsContractResponse {
  /// Authorization header authentication
  final pulumi.Input<BackendAuthorizationHeaderCredentialsResponse?>? authorization;
  /// List of Client Certificate Thumbprints. Will be ignored if certificatesIds are provided.
  final pulumi.Input<List<String>?>? certificate;
  /// List of Client Certificate Ids.
  final pulumi.Input<List<String>?>? certificateIds;
  /// Header Parameter description.
  final pulumi.Input<Map<String, List<String>>?>? header;
  /// Query Parameter description.
  final pulumi.Input<Map<String, List<String>>?>? query;

  /// Creates a new [BackendCredentialsContractResponse].
  /// [authorization] Authorization header authentication
  /// [certificate] List of Client Certificate Thumbprints. Will be ignored if certificatesIds are provided.
  /// [certificateIds] List of Client Certificate Ids.
  /// [header] Header Parameter description.
  /// [query] Query Parameter description.
  const BackendCredentialsContractResponse({
    this.authorization,
    this.certificate,
    this.certificateIds,
    this.header,
    this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorization': ?pulumi.Input.mapOptionalInputValue<BackendAuthorizationHeaderCredentialsResponse, Map<String, dynamic>>(authorization, (value) => value.toMap()),
      'certificate': ?certificate,
      'certificateIds': ?certificateIds,
      'header': ?header,
      'query': ?query,
    };
  }

  factory BackendCredentialsContractResponse.fromMap(Map<String, dynamic> map) {
    return BackendCredentialsContractResponse(
      authorization: (() { final guardedValue = map['authorization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendAuthorizationHeaderCredentialsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      certificateIds: (() { final guardedValue = map['certificateIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      header: (() { final guardedValue = map['header']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>())); })(),
      query: (() { final guardedValue = map['query']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>())); })(),
    );
  }
}
