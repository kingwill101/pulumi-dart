// ignore_for_file: unused_element, unnecessary_cast

import 'backend_authorization_header_credentials_response.dart';

/// Details of the Credentials used to connect to Backend.
class BackendCredentialsContractResponse {
  /// Authorization header authentication
  final BackendAuthorizationHeaderCredentialsResponse? authorization;
  /// List of Client Certificate Thumbprints. Will be ignored if certificatesIds are provided.
  final List<String>? certificate;
  /// List of Client Certificate Ids.
  final List<String>? certificateIds;
  /// Header Parameter description.
  final Map<String, List<String>>? header;
  /// Query Parameter description.
  final Map<String, List<String>>? query;

  /// Creates a new [BackendCredentialsContractResponse].
  /// [authorization] Authorization header authentication
  /// [certificate] List of Client Certificate Thumbprints. Will be ignored if certificatesIds are provided.
  /// [certificateIds] List of Client Certificate Ids.
  /// [header] Header Parameter description.
  /// [query] Query Parameter description.
  BackendCredentialsContractResponse({
    this.authorization,
    this.certificate,
    this.certificateIds,
    this.header,
    this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorization': ?authorization == null ? null : authorization!.toMap(),
      'certificate': ?certificate,
      'certificateIds': ?certificateIds,
      'header': ?header,
      'query': ?query,
    };
  }

  factory BackendCredentialsContractResponse.fromMap(Map<String, dynamic> map) {
    return BackendCredentialsContractResponse(
      authorization: map['authorization'] == null ? null : BackendAuthorizationHeaderCredentialsResponse.fromMap((map['authorization'] as Map).cast<String, dynamic>()),
      certificate: map['certificate'] == null ? null : (map['certificate'] as List).cast<String>(),
      certificateIds: map['certificateIds'] == null ? null : (map['certificateIds'] as List).cast<String>(),
      header: map['header'] == null ? null : (map['header'] as Map).cast<String, List<String>>(),
      query: map['query'] == null ? null : (map['query'] as Map).cast<String, List<String>>(),
    );
  }
}

