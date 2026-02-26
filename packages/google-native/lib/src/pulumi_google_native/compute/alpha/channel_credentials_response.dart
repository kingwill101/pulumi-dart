// ignore_for_file: unused_element, unnecessary_cast

import 'tls_certificate_paths_response.dart';

/// [Deprecated] gRPC channel credentials to access the SDS server. gRPC channel credentials to access the SDS server.
class ChannelCredentialsResponse {
  /// The call credentials to access the SDS server.
  final TlsCertificatePathsResponse certificates;

  /// The channel credentials to access the SDS server. This field can be set to one of the following: CERTIFICATES: Use TLS certificates to access the SDS server. GCE_VM: Use local GCE VM credentials to access the SDS server.
  final String channelCredentialType;

  ChannelCredentialsResponse({
    required this.certificates,
    required this.channelCredentialType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificates'] = certificates.toMap();
    map['channelCredentialType'] = channelCredentialType;
    return map;
  }

  factory ChannelCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return ChannelCredentialsResponse(
      certificates: TlsCertificatePathsResponse.fromMap(
          (map['certificates'] as Map).cast<String, dynamic>()),
      channelCredentialType: map['channelCredentialType'] as String,
    );
  }
}
