// ignore_for_file: unused_element, unnecessary_cast

class ServerTlsPolicyMtlsPolicyClientValidationCaGrpcEndpoint {
  /// The target URI of the gRPC endpoint. Only UDS path is supported, and should start with "unix:".
  final String targetUri;

  /// Creates a new [ServerTlsPolicyMtlsPolicyClientValidationCaGrpcEndpoint].
  /// [targetUri] The target URI of the gRPC endpoint. Only UDS path is supported, and should start with "unix:".
  ServerTlsPolicyMtlsPolicyClientValidationCaGrpcEndpoint({
    required this.targetUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'targetUri': targetUri};
  }

  factory ServerTlsPolicyMtlsPolicyClientValidationCaGrpcEndpoint.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServerTlsPolicyMtlsPolicyClientValidationCaGrpcEndpoint(
      targetUri: map['targetUri'] as String,
    );
  }
}
