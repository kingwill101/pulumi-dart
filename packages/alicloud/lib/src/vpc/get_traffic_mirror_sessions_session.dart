// ignore_for_file: unused_element, unnecessary_cast


class GetTrafficMirrorSessionsSession {
  /// Indicates whether traffic mirror sessions are enabled. default to `false`.
  final bool enabled;
  /// The ID of the Traffic Mirror Session.
  final String id;
  /// The maximum transmission unit (MTU).
  final int packetLength;
  /// The priority of the traffic mirror session. A smaller value indicates a higher priority.
  final int priority;
  /// The state of the traffic mirror session. Valid values: `Creating`, `Created`, `Modifying` and `Deleting`.
  final String status;
  /// The ID of the filter.
  final String trafficMirrorFilterId;
  /// The state of the traffic mirror session. Valid values: `Normal` or `FinancialLocked`. `Normal`: working as expected. `FinancialLocked`: locked due to overdue payments.
  final String trafficMirrorSessionBusinessStatus;
  /// The description of the traffic mirror session.
  final String trafficMirrorSessionDescription;
  /// The first ID of the resource.
  final String trafficMirrorSessionId;
  /// The name of the traffic mirror session.
  final String trafficMirrorSessionName;
  /// The ID of the mirror source.
  final List<String> trafficMirrorSourceIds;
  /// The ID of the mirror destination. You can specify only an ENI or a Server Load Balancer (SLB) instance as a mirror destination.
  final String trafficMirrorTargetId;
  /// The type of the mirror destination. Valid values: `NetworkInterface` or `SLB`. `NetworkInterface`: an ENI. `SLB`: an internal-facing SLB instance
  final String trafficMirrorTargetType;
  /// You can specify VNIs to distinguish different mirrored traffic.
  final int virtualNetworkId;

  /// Creates a new [GetTrafficMirrorSessionsSession].
  /// [enabled] Indicates whether traffic mirror sessions are enabled. default to `false`.
  /// [id] The ID of the Traffic Mirror Session.
  /// [packetLength] The maximum transmission unit (MTU).
  /// [priority] The priority of the traffic mirror session. A smaller value indicates a higher priority.
  /// [status] The state of the traffic mirror session. Valid values: `Creating`, `Created`, `Modifying` and `Deleting`.
  /// [trafficMirrorFilterId] The ID of the filter.
  /// [trafficMirrorSessionBusinessStatus] The state of the traffic mirror session. Valid values: `Normal` or `FinancialLocked`. `Normal`: working as expected. `FinancialLocked`: locked due to overdue payments.
  /// [trafficMirrorSessionDescription] The description of the traffic mirror session.
  /// [trafficMirrorSessionId] The first ID of the resource.
  /// [trafficMirrorSessionName] The name of the traffic mirror session.
  /// [trafficMirrorSourceIds] The ID of the mirror source.
  /// [trafficMirrorTargetId] The ID of the mirror destination. You can specify only an ENI or a Server Load Balancer (SLB) instance as a mirror destination.
  /// [trafficMirrorTargetType] The type of the mirror destination. Valid values: `NetworkInterface` or `SLB`. `NetworkInterface`: an ENI. `SLB`: an internal-facing SLB instance
  /// [virtualNetworkId] You can specify VNIs to distinguish different mirrored traffic.
  GetTrafficMirrorSessionsSession({
    required this.enabled,
    required this.id,
    required this.packetLength,
    required this.priority,
    required this.status,
    required this.trafficMirrorFilterId,
    required this.trafficMirrorSessionBusinessStatus,
    required this.trafficMirrorSessionDescription,
    required this.trafficMirrorSessionId,
    required this.trafficMirrorSessionName,
    required this.trafficMirrorSourceIds,
    required this.trafficMirrorTargetId,
    required this.trafficMirrorTargetType,
    required this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'id': id,
      'packetLength': packetLength,
      'priority': priority,
      'status': status,
      'trafficMirrorFilterId': trafficMirrorFilterId,
      'trafficMirrorSessionBusinessStatus': trafficMirrorSessionBusinessStatus,
      'trafficMirrorSessionDescription': trafficMirrorSessionDescription,
      'trafficMirrorSessionId': trafficMirrorSessionId,
      'trafficMirrorSessionName': trafficMirrorSessionName,
      'trafficMirrorSourceIds': trafficMirrorSourceIds,
      'trafficMirrorTargetId': trafficMirrorTargetId,
      'trafficMirrorTargetType': trafficMirrorTargetType,
      'virtualNetworkId': virtualNetworkId,
    };
  }

  factory GetTrafficMirrorSessionsSession.fromMap(Map<String, dynamic> map) {
    return GetTrafficMirrorSessionsSession(
      enabled: map['enabled'] as bool,
      id: map['id'] as String,
      packetLength: map['packetLength'] as int,
      priority: map['priority'] as int,
      status: map['status'] as String,
      trafficMirrorFilterId: map['trafficMirrorFilterId'] as String,
      trafficMirrorSessionBusinessStatus: map['trafficMirrorSessionBusinessStatus'] as String,
      trafficMirrorSessionDescription: map['trafficMirrorSessionDescription'] as String,
      trafficMirrorSessionId: map['trafficMirrorSessionId'] as String,
      trafficMirrorSessionName: map['trafficMirrorSessionName'] as String,
      trafficMirrorSourceIds: (map['trafficMirrorSourceIds'] as List).cast<String>(),
      trafficMirrorTargetId: map['trafficMirrorTargetId'] as String,
      trafficMirrorTargetType: map['trafficMirrorTargetType'] as String,
      virtualNetworkId: map['virtualNetworkId'] as int,
    );
  }
}

