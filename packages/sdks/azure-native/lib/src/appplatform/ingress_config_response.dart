// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Ingress configuration payload for Azure Spring Apps resource.
class IngressConfigResponse {
  /// Ingress read time out in seconds.
  final pulumi.Input<int?>? readTimeoutInSeconds;

  /// Creates a new [IngressConfigResponse].
  /// [readTimeoutInSeconds] Ingress read time out in seconds.
  const IngressConfigResponse({
    this.readTimeoutInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'readTimeoutInSeconds': ?readTimeoutInSeconds,
    };
  }

  factory IngressConfigResponse.fromMap(Map<String, dynamic> map) {
    return IngressConfigResponse(
      readTimeoutInSeconds: (() { final guardedValue = map['readTimeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
