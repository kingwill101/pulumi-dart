// ignore_for_file: unused_element, unnecessary_cast

/// Message containing connection draining configuration.
class ConnectionDrainingComputeBeta {
  /// Configures a duration timeout for existing requests on a removed backend instance. For supported load balancers and protocols, as described in Enabling connection draining.
  final int? drainingTimeoutSec;

  ConnectionDrainingComputeBeta({
    this.drainingTimeoutSec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final drainingTimeoutSecValue = drainingTimeoutSec;
    if (drainingTimeoutSecValue != null) {
      map['drainingTimeoutSec'] = drainingTimeoutSecValue;
    }
    return map;
  }

  factory ConnectionDrainingComputeBeta.fromMap(Map<String, dynamic> map) {
    return ConnectionDrainingComputeBeta(
      drainingTimeoutSec: map['drainingTimeoutSec'] == null
          ? null
          : map['drainingTimeoutSec'] as int,
    );
  }
}
