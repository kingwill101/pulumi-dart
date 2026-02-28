// ignore_for_file: unused_element, unnecessary_cast

class GetRegionBackendServiceConnectionTrackingPolicy {
  /// Specifies connection persistence when backends are unhealthy.
  ///
  /// If set to 'DEFAULT_FOR_PROTOCOL', the existing connections persist on
  /// unhealthy backends only for connection-oriented protocols (TCP and SCTP)
  /// and only if the Tracking Mode is PER_CONNECTION (default tracking mode)
  /// or the Session Affinity is configured for 5-tuple. They do not persist
  /// for UDP.
  ///
  /// If set to 'NEVER_PERSIST', after a backend becomes unhealthy, the existing
  /// connections on the unhealthy backend are never persisted on the unhealthy
  /// backend. They are always diverted to newly selected healthy backends
  /// (unless all backends are unhealthy).
  ///
  /// If set to 'ALWAYS_PERSIST', existing connections always persist on
  /// unhealthy backends regardless of protocol and session affinity. It is
  /// generally not recommended to use this mode overriding the default. Default value: "DEFAULT_FOR_PROTOCOL" Possible values: ["DEFAULT_FOR_PROTOCOL", "NEVER_PERSIST", "ALWAYS_PERSIST"]
  final String connectionPersistenceOnUnhealthyBackends;

  /// Enable Strong Session Affinity for Network Load Balancing. This option is not available publicly.
  final bool enableStrongAffinity;

  /// Specifies how long to keep a Connection Tracking entry while there is
  /// no matching traffic (in seconds).
  ///
  /// For L4 ILB the minimum(default) is 10 minutes and maximum is 16 hours.
  ///
  /// For NLB the minimum(default) is 60 seconds and the maximum is 16 hours.
  final int idleTimeoutSec;

  /// Specifies the key used for connection tracking. There are two options:
  /// 'PER_CONNECTION': The Connection Tracking is performed as per the
  /// Connection Key (default Hash Method) for the specific protocol.
  ///
  /// 'PER_SESSION': The Connection Tracking is performed as per the
  /// configured Session Affinity. It matches the configured Session Affinity. Default value: "PER_CONNECTION" Possible values: ["PER_CONNECTION", "PER_SESSION"]
  final String trackingMode;

  /// Creates a new [GetRegionBackendServiceConnectionTrackingPolicy].
  /// [connectionPersistenceOnUnhealthyBackends] Specifies connection persistence when backends are unhealthy.
  /// [enableStrongAffinity] Enable Strong Session Affinity for Network Load Balancing. This option is not available publicly.
  /// [idleTimeoutSec] Specifies how long to keep a Connection Tracking entry while there is
  /// [trackingMode] Specifies the key used for connection tracking. There are two options:
  GetRegionBackendServiceConnectionTrackingPolicy({
    required this.connectionPersistenceOnUnhealthyBackends,
    required this.enableStrongAffinity,
    required this.idleTimeoutSec,
    required this.trackingMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionPersistenceOnUnhealthyBackends'] =
        connectionPersistenceOnUnhealthyBackends;
    map['enableStrongAffinity'] = enableStrongAffinity;
    map['idleTimeoutSec'] = idleTimeoutSec;
    map['trackingMode'] = trackingMode;
    return map;
  }

  factory GetRegionBackendServiceConnectionTrackingPolicy.fromMap(
      Map<String, dynamic> map) {
    return GetRegionBackendServiceConnectionTrackingPolicy(
      connectionPersistenceOnUnhealthyBackends:
          map['connectionPersistenceOnUnhealthyBackends'] as String,
      enableStrongAffinity: map['enableStrongAffinity'] as bool,
      idleTimeoutSec: map['idleTimeoutSec'] as int,
      trackingMode: map['trackingMode'] as String,
    );
  }
}
