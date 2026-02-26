// ignore_for_file: unused_element, unnecessary_cast

/// Message containing connection draining configuration.
class ConnectionDrainingResponse2 {
  /// Configures a duration timeout for existing requests on a removed backend instance. For supported load balancers and protocols, as described in Enabling connection draining.
  final int drainingTimeoutSec;

  ConnectionDrainingResponse2({
    required this.drainingTimeoutSec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['drainingTimeoutSec'] = drainingTimeoutSec;
    return map;
  }

  factory ConnectionDrainingResponse2.fromMap(Map<String, dynamic> map) {
    return ConnectionDrainingResponse2(
      drainingTimeoutSec: map['drainingTimeoutSec'] as int,
    );
  }
}
