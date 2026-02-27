// ignore_for_file: unused_element, unnecessary_cast

/// Message containing connection draining configuration.
class ConnectionDrainingResponseComputeV1 {
  /// Configures a duration timeout for existing requests on a removed backend instance. For supported load balancers and protocols, as described in Enabling connection draining.
  final int drainingTimeoutSec;

  ConnectionDrainingResponseComputeV1({
    required this.drainingTimeoutSec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['drainingTimeoutSec'] = drainingTimeoutSec;
    return map;
  }

  factory ConnectionDrainingResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return ConnectionDrainingResponseComputeV1(
      drainingTimeoutSec: map['drainingTimeoutSec'] as int,
    );
  }
}
