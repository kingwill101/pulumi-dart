// ignore_for_file: unused_element, unnecessary_cast

/// Message containing connection draining configuration.
class ConnectionDrainingComputeBeta {
  /// Configures a duration timeout for existing requests on a removed backend instance. For supported load balancers and protocols, as described in Enabling connection draining.
  final int? drainingTimeoutSec;

  /// Creates a new [ConnectionDrainingComputeBeta].
  /// [drainingTimeoutSec] Configures a duration timeout for existing requests on a removed backend instance. For supported load balancers and protocols, as described in Enabling connection draining.
  ConnectionDrainingComputeBeta({this.drainingTimeoutSec});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'drainingTimeoutSec': ?drainingTimeoutSec};
  }

  factory ConnectionDrainingComputeBeta.fromMap(Map<String, dynamic> map) {
    return ConnectionDrainingComputeBeta(
      drainingTimeoutSec: map['drainingTimeoutSec'] == null
          ? null
          : map['drainingTimeoutSec'] as int,
    );
  }
}
