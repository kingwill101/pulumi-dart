// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getEndpoint.
class GetEndpointIdsV1Result {
  /// The create time timestamp.
  final String createTime;

  /// User-provided description of the endpoint
  final String description;

  /// The fully qualified URL of the endpoint's ILB Forwarding Rule.
  final String endpointForwardingRule;

  /// The IP address of the IDS Endpoint's ILB.
  final String endpointIp;

  /// The labels of the endpoint.
  final Map<String, String> labels;

  /// The name of the endpoint.
  final String name;

  /// The fully qualified URL of the network to which the IDS Endpoint is attached.
  final String network;

  /// Lowest threat severity that this endpoint will alert on.
  final String severity;

  /// Current state of the endpoint.
  final String state;

  /// List of threat IDs to be excepted from generating alerts.
  final List<String> threatExceptions;

  /// Whether the endpoint should report traffic logs in addition to threat logs.
  final bool trafficLogs;

  /// The update time timestamp.
  final String updateTime;

  GetEndpointIdsV1Result({
    required this.createTime,
    required this.description,
    required this.endpointForwardingRule,
    required this.endpointIp,
    required this.labels,
    required this.name,
    required this.network,
    required this.severity,
    required this.state,
    required this.threatExceptions,
    required this.trafficLogs,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['endpointForwardingRule'] = endpointForwardingRule;
    map['endpointIp'] = endpointIp;
    map['labels'] = labels;
    map['name'] = name;
    map['network'] = network;
    map['severity'] = severity;
    map['state'] = state;
    map['threatExceptions'] = threatExceptions;
    map['trafficLogs'] = trafficLogs;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetEndpointIdsV1Result.fromMap(Map<String, dynamic> map) {
    return GetEndpointIdsV1Result(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      endpointForwardingRule: map['endpointForwardingRule'] as String,
      endpointIp: map['endpointIp'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      network: map['network'] as String,
      severity: map['severity'] as String,
      state: map['state'] as String,
      threatExceptions: (map['threatExceptions'] as List).cast<String>(),
      trafficLogs: map['trafficLogs'] as bool,
      updateTime: map['updateTime'] as String,
    );
  }
}
