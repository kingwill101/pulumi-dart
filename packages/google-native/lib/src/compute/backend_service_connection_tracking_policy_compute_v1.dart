// ignore_for_file: unused_element, unnecessary_cast

import 'backend_service_connection_tracking_policy_connection_persistence_on_unhealthy_backends_compute_v1.dart';
import 'backend_service_connection_tracking_policy_tracking_mode_compute_v1.dart';

/// Connection Tracking configuration for this BackendService.
class BackendServiceConnectionTrackingPolicyComputeV1 {
  /// Specifies connection persistence when backends are unhealthy. The default value is DEFAULT_FOR_PROTOCOL. If set to DEFAULT_FOR_PROTOCOL, the existing connections persist on unhealthy backends only for connection-oriented protocols (TCP and SCTP) and only if the Tracking Mode is PER_CONNECTION (default tracking mode) or the Session Affinity is configured for 5-tuple. They do not persist for UDP. If set to NEVER_PERSIST, after a backend becomes unhealthy, the existing connections on the unhealthy backend are never persisted on the unhealthy backend. They are always diverted to newly selected healthy backends (unless all backends are unhealthy). If set to ALWAYS_PERSIST, existing connections always persist on unhealthy backends regardless of protocol and session affinity. It is generally not recommended to use this mode overriding the default. For more details, see [Connection Persistence for Network Load Balancing](https://cloud.google.com/load-balancing/docs/network/networklb-backend-service#connection-persistence) and [Connection Persistence for Internal TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/internal#connection-persistence).
  final BackendServiceConnectionTrackingPolicyConnectionPersistenceOnUnhealthyBackendsComputeV1?
      connectionPersistenceOnUnhealthyBackends;

  /// Enable Strong Session Affinity for Network Load Balancing. This option is not available publicly.
  final bool? enableStrongAffinity;

  /// Specifies how long to keep a Connection Tracking entry while there is no matching traffic (in seconds). For Internal TCP/UDP Load Balancing: - The minimum (default) is 10 minutes and the maximum is 16 hours. - It can be set only if Connection Tracking is less than 5-tuple (i.e. Session Affinity is CLIENT_IP_NO_DESTINATION, CLIENT_IP or CLIENT_IP_PROTO, and Tracking Mode is PER_SESSION). For Network Load Balancer the default is 60 seconds. This option is not available publicly.
  final int? idleTimeoutSec;

  /// Specifies the key used for connection tracking. There are two options: - PER_CONNECTION: This is the default mode. The Connection Tracking is performed as per the Connection Key (default Hash Method) for the specific protocol. - PER_SESSION: The Connection Tracking is performed as per the configured Session Affinity. It matches the configured Session Affinity. For more details, see [Tracking Mode for Network Load Balancing](https://cloud.google.com/load-balancing/docs/network/networklb-backend-service#tracking-mode) and [Tracking Mode for Internal TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/internal#tracking-mode).
  final BackendServiceConnectionTrackingPolicyTrackingModeComputeV1?
      trackingMode;

  /// Creates a new [BackendServiceConnectionTrackingPolicyComputeV1].
  /// [connectionPersistenceOnUnhealthyBackends] Specifies connection persistence when backends are unhealthy. The default value is DEFAULT_FOR_PROTOCOL. If set to DEFAULT_FOR_PROTOCOL, the existing connections persist on unhealthy backends only for connection-oriented protocols (TCP and SCTP) and only if the Tracking Mode is PER_CONNECTION (default tracking mode) or the Session Affinity is configured for 5-tuple. They do not persist for UDP. If set to NEVER_PERSIST, after a backend becomes unhealthy, the existing connections on the unhealthy backend are never persisted on the unhealthy backend. They are always diverted to newly selected healthy backends (unless all backends are unhealthy). If set to ALWAYS_PERSIST, existing connections always persist on unhealthy backends regardless of protocol and session affinity. It is generally not recommended to use this mode overriding the default. For more details, see [Connection Persistence for Network Load Balancing](https://cloud.google.com/load-balancing/docs/network/networklb-backend-service#connection-persistence) and [Connection Persistence for Internal TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/internal#connection-persistence).
  /// [enableStrongAffinity] Enable Strong Session Affinity for Network Load Balancing. This option is not available publicly.
  /// [idleTimeoutSec] Specifies how long to keep a Connection Tracking entry while there is no matching traffic (in seconds). For Internal TCP/UDP Load Balancing: - The minimum (default) is 10 minutes and the maximum is 16 hours. - It can be set only if Connection Tracking is less than 5-tuple (i.e. Session Affinity is CLIENT_IP_NO_DESTINATION, CLIENT_IP or CLIENT_IP_PROTO, and Tracking Mode is PER_SESSION). For Network Load Balancer the default is 60 seconds. This option is not available publicly.
  /// [trackingMode] Specifies the key used for connection tracking. There are two options: - PER_CONNECTION: This is the default mode. The Connection Tracking is performed as per the Connection Key (default Hash Method) for the specific protocol. - PER_SESSION: The Connection Tracking is performed as per the configured Session Affinity. It matches the configured Session Affinity. For more details, see [Tracking Mode for Network Load Balancing](https://cloud.google.com/load-balancing/docs/network/networklb-backend-service#tracking-mode) and [Tracking Mode for Internal TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/internal#tracking-mode).
  BackendServiceConnectionTrackingPolicyComputeV1({
    this.connectionPersistenceOnUnhealthyBackends,
    this.enableStrongAffinity,
    this.idleTimeoutSec,
    this.trackingMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectionPersistenceOnUnhealthyBackendsValue =
        connectionPersistenceOnUnhealthyBackends;
    if (connectionPersistenceOnUnhealthyBackendsValue != null) {
      map['connectionPersistenceOnUnhealthyBackends'] =
          connectionPersistenceOnUnhealthyBackendsValue.value;
    }
    final enableStrongAffinityValue = enableStrongAffinity;
    if (enableStrongAffinityValue != null) {
      map['enableStrongAffinity'] = enableStrongAffinityValue;
    }
    final idleTimeoutSecValue = idleTimeoutSec;
    if (idleTimeoutSecValue != null) {
      map['idleTimeoutSec'] = idleTimeoutSecValue;
    }
    final trackingModeValue = trackingMode;
    if (trackingModeValue != null) {
      map['trackingMode'] = trackingModeValue.value;
    }
    return map;
  }

  factory BackendServiceConnectionTrackingPolicyComputeV1.fromMap(
      Map<String, dynamic> map) {
    return BackendServiceConnectionTrackingPolicyComputeV1(
      connectionPersistenceOnUnhealthyBackends: map[
                  'connectionPersistenceOnUnhealthyBackends'] ==
              null
          ? null
          : BackendServiceConnectionTrackingPolicyConnectionPersistenceOnUnhealthyBackendsComputeV1
              .fromValue(
                  map['connectionPersistenceOnUnhealthyBackends'] as String),
      enableStrongAffinity: map['enableStrongAffinity'] == null
          ? null
          : map['enableStrongAffinity'] as bool,
      idleTimeoutSec:
          map['idleTimeoutSec'] == null ? null : map['idleTimeoutSec'] as int,
      trackingMode: map['trackingMode'] == null
          ? null
          : BackendServiceConnectionTrackingPolicyTrackingModeComputeV1
              .fromValue(map['trackingMode'] as String),
    );
  }
}
