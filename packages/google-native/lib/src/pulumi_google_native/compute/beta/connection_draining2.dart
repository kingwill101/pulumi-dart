// ignore_for_file: unused_element, unnecessary_cast

/// Message containing connection draining configuration.
class ConnectionDraining2 {
  /// Configures a duration timeout for existing requests on a removed backend instance. For supported load balancers and protocols, as described in Enabling connection draining.
  final int? drainingTimeoutSec;

  ConnectionDraining2({
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

  factory ConnectionDraining2.fromMap(Map<String, dynamic> map) {
    return ConnectionDraining2(
      drainingTimeoutSec: map['drainingTimeoutSec'] == null
          ? null
          : map['drainingTimeoutSec'] as int,
    );
  }
}
