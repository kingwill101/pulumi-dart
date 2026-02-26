// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getPeering.
class GetPeeringResult2 {
  /// The full names of the Google Compute Engine [networks](/compute/docs/networks-and-firewalls#networks) to which the instance is connected. Caller needs to make sure that CIDR subnets do not overlap between networks, else peering creation will fail.
  final String authorizedNetwork;

  /// The time the instance was created.
  final String createTime;

  /// Full domain resource path for the Managed AD Domain involved in peering. The resource path should be in the form: `projects/{project_id}/locations/global/domains/{domain_name}`
  final String domainResource;

  /// Optional. Resource labels to represent user provided metadata.
  final Map<String, String> labels;

  /// Unique name of the peering in this scope including projects and location using the form: `projects/{project_id}/locations/global/peerings/{peering_id}`.
  final String name;

  /// The current state of this Peering.
  final String state;

  /// Additional information about the current status of this peering, if available.
  final String statusMessage;

  /// Last update time.
  final String updateTime;

  GetPeeringResult2({
    required this.authorizedNetwork,
    required this.createTime,
    required this.domainResource,
    required this.labels,
    required this.name,
    required this.state,
    required this.statusMessage,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizedNetwork'] = authorizedNetwork;
    map['createTime'] = createTime;
    map['domainResource'] = domainResource;
    map['labels'] = labels;
    map['name'] = name;
    map['state'] = state;
    map['statusMessage'] = statusMessage;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetPeeringResult2.fromMap(Map<String, dynamic> map) {
    return GetPeeringResult2(
      authorizedNetwork: map['authorizedNetwork'] as String,
      createTime: map['createTime'] as String,
      domainResource: map['domainResource'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      state: map['state'] as String,
      statusMessage: map['statusMessage'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
