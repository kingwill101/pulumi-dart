// ignore_for_file: unused_element, unnecessary_cast

class ClientTlsPolicyServerValidationCaGrpcEndpoint {
  /// The target URI of the gRPC endpoint. Only UDS path is supported, and should start with "unix:".
  final String targetUri;

  ClientTlsPolicyServerValidationCaGrpcEndpoint({
    required this.targetUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetUri'] = targetUri;
    return map;
  }

  factory ClientTlsPolicyServerValidationCaGrpcEndpoint.fromMap(
      Map<String, dynamic> map) {
    return ClientTlsPolicyServerValidationCaGrpcEndpoint(
      targetUri: map['targetUri'] as String,
    );
  }
}
