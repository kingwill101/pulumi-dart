// ignore_for_file: unused_element, unnecessary_cast

/// Message containing connection draining configuration.
class ConnectionDraining {
  /// Configures a duration timeout for existing requests on a removed backend instance. For supported load balancers and protocols, as described in Enabling connection draining.
  final int? drainingTimeoutSec;

  /// Creates a new [ConnectionDraining].
  /// [drainingTimeoutSec] Configures a duration timeout for existing requests on a removed backend instance. For supported load balancers and protocols, as described in Enabling connection draining.
  ConnectionDraining({
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

  factory ConnectionDraining.fromMap(Map<String, dynamic> map) {
    return ConnectionDraining(
      drainingTimeoutSec: map['drainingTimeoutSec'] == null
          ? null
          : map['drainingTimeoutSec'] as int,
    );
  }
}
