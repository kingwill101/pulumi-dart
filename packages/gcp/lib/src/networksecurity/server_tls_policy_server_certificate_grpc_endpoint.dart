// ignore_for_file: unused_element, unnecessary_cast

class ServerTlsPolicyServerCertificateGrpcEndpoint {
  /// The target URI of the gRPC endpoint. Only UDS path is supported, and should start with "unix:".
  final String targetUri;

  /// Creates a new [ServerTlsPolicyServerCertificateGrpcEndpoint].
  /// [targetUri] The target URI of the gRPC endpoint. Only UDS path is supported, and should start with "unix:".
  ServerTlsPolicyServerCertificateGrpcEndpoint({
    required this.targetUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetUri'] = targetUri;
    return map;
  }

  factory ServerTlsPolicyServerCertificateGrpcEndpoint.fromMap(
      Map<String, dynamic> map) {
    return ServerTlsPolicyServerCertificateGrpcEndpoint(
      targetUri: map['targetUri'] as String,
    );
  }
}
