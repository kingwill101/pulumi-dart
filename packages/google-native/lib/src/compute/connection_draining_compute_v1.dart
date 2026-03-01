// ignore_for_file: unused_element, unnecessary_cast

/// Message containing connection draining configuration.
class ConnectionDrainingComputeV1 {
  /// Configures a duration timeout for existing requests on a removed backend instance. For supported load balancers and protocols, as described in Enabling connection draining.
  final int? drainingTimeoutSec;

  /// Creates a new [ConnectionDrainingComputeV1].
  /// [drainingTimeoutSec] Configures a duration timeout for existing requests on a removed backend instance. For supported load balancers and protocols, as described in Enabling connection draining.
  ConnectionDrainingComputeV1({this.drainingTimeoutSec});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'drainingTimeoutSec': ?drainingTimeoutSec};
  }

  factory ConnectionDrainingComputeV1.fromMap(Map<String, dynamic> map) {
    return ConnectionDrainingComputeV1(
      drainingTimeoutSec: map['drainingTimeoutSec'] == null
          ? null
          : map['drainingTimeoutSec'] as int,
    );
  }
}
