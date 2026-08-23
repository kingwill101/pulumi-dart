// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Ingress configuration payload for Azure Spring Apps resource.
class IngressConfig {
  /// Ingress read time out in seconds.
  final pulumi.Input<int>? readTimeoutInSeconds;

  /// Creates a new [IngressConfig].
  /// [readTimeoutInSeconds] Ingress read time out in seconds.
  const IngressConfig({
    this.readTimeoutInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'readTimeoutInSeconds': ?readTimeoutInSeconds,
    };
  }

  factory IngressConfig.fromMap(Map<String, dynamic> map) {
    return IngressConfig(
      readTimeoutInSeconds: (() { final guardedValue = map['readTimeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
