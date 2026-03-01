// ignore_for_file: unused_element, unnecessary_cast


/// Ingress configuration payload for Azure Spring Apps resource.
class IngressConfigResponse {
  /// Ingress read time out in seconds.
  final int? readTimeoutInSeconds;

  /// Creates a new [IngressConfigResponse].
  /// [readTimeoutInSeconds] Ingress read time out in seconds.
  IngressConfigResponse({
    this.readTimeoutInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'readTimeoutInSeconds': ?readTimeoutInSeconds,
    };
  }

  factory IngressConfigResponse.fromMap(Map<String, dynamic> map) {
    return IngressConfigResponse(
      readTimeoutInSeconds: map['readTimeoutInSeconds'] == null ? null : map['readTimeoutInSeconds'] as int,
    );
  }
}

