// ignore_for_file: unused_element, unnecessary_cast

class ClientTlsPolicyClientCertificateGrpcEndpoint {
  /// The target URI of the gRPC endpoint. Only UDS path is supported, and should start with "unix:".
  final String targetUri;

  ClientTlsPolicyClientCertificateGrpcEndpoint({
    required this.targetUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetUri'] = targetUri;
    return map;
  }

  factory ClientTlsPolicyClientCertificateGrpcEndpoint.fromMap(
      Map<String, dynamic> map) {
    return ClientTlsPolicyClientCertificateGrpcEndpoint(
      targetUri: map['targetUri'] as String,
    );
  }
}
