// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTrafficMirrorSessionsSession {
  /// Indicates whether traffic mirror sessions are enabled. default to `false`.
  final pulumi.Input<bool> enabled;
  /// The ID of the Traffic Mirror Session.
  final pulumi.Input<String> id;
  /// The maximum transmission unit (MTU).
  final pulumi.Input<int> packetLength;
  /// The priority of the traffic mirror session. A smaller value indicates a higher priority.
  final pulumi.Input<int> priority;
  /// The state of the traffic mirror session. Valid values: `Creating`, `Created`, `Modifying` and `Deleting`.
  final pulumi.Input<String> status;
  /// The ID of the filter.
  final pulumi.Input<String> trafficMirrorFilterId;
  /// The state of the traffic mirror session. Valid values: `Normal` or `FinancialLocked`. `Normal`: working as expected. `FinancialLocked`: locked due to overdue payments.
  final pulumi.Input<String> trafficMirrorSessionBusinessStatus;
  /// The description of the traffic mirror session.
  final pulumi.Input<String> trafficMirrorSessionDescription;
  /// The first ID of the resource.
  final pulumi.Input<String> trafficMirrorSessionId;
  /// The name of the traffic mirror session.
  final pulumi.Input<String> trafficMirrorSessionName;
  /// The ID of the mirror source.
  final pulumi.Input<List<String>> trafficMirrorSourceIds;
  /// The ID of the mirror destination. You can specify only an ENI or a Server Load Balancer (SLB) instance as a mirror destination.
  final pulumi.Input<String> trafficMirrorTargetId;
  /// The type of the mirror destination. Valid values: `NetworkInterface` or `SLB`. `NetworkInterface`: an ENI. `SLB`: an internal-facing SLB instance
  final pulumi.Input<String> trafficMirrorTargetType;
  /// You can specify VNIs to distinguish different mirrored traffic.
  final pulumi.Input<int> virtualNetworkId;

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
      enabled: (map['enabled'] as bool).input(),
      id: (map['id'] as String).input(),
      packetLength: (map['packetLength'] as int).input(),
      priority: (map['priority'] as int).input(),
      status: (map['status'] as String).input(),
      trafficMirrorFilterId: (map['trafficMirrorFilterId'] as String).input(),
      trafficMirrorSessionBusinessStatus: (map['trafficMirrorSessionBusinessStatus'] as String).input(),
      trafficMirrorSessionDescription: (map['trafficMirrorSessionDescription'] as String).input(),
      trafficMirrorSessionId: (map['trafficMirrorSessionId'] as String).input(),
      trafficMirrorSessionName: (map['trafficMirrorSessionName'] as String).input(),
      trafficMirrorSourceIds: ((map['trafficMirrorSourceIds'] as List).cast<String>()).input(),
      trafficMirrorTargetId: (map['trafficMirrorTargetId'] as String).input(),
      trafficMirrorTargetType: (map['trafficMirrorTargetType'] as String).input(),
      virtualNetworkId: (map['virtualNetworkId'] as int).input(),
    );
  }
}

