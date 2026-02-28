// ignore_for_file: unused_element, unnecessary_cast

/// Message containing connection draining configuration.
class ConnectionDrainingResponseComputeBeta {
  /// Configures a duration timeout for existing requests on a removed backend instance. For supported load balancers and protocols, as described in Enabling connection draining.
  final int drainingTimeoutSec;

  /// Creates a new [ConnectionDrainingResponseComputeBeta].
  /// [drainingTimeoutSec] Configures a duration timeout for existing requests on a removed backend instance. For supported load balancers and protocols, as described in Enabling connection draining.
  ConnectionDrainingResponseComputeBeta({
    required this.drainingTimeoutSec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['drainingTimeoutSec'] = drainingTimeoutSec;
    return map;
  }

  factory ConnectionDrainingResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return ConnectionDrainingResponseComputeBeta(
      drainingTimeoutSec: map['drainingTimeoutSec'] as int,
    );
  }
}
