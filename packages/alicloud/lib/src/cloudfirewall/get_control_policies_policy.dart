// ignore_for_file: unused_element, unnecessary_cast


class GetControlPoliciesPolicy {
  /// The action that Cloud Firewall performs on the traffic. Valid values: `accept`, `drop`, `log`.
  final String aclAction;
  /// The unique ID of the access control policy.
  final String aclUuid;
  /// The application ID in the access control policy.
  final String applicationId;
  /// The type of the application that the access control policy supports.
  final String applicationName;
  /// The description of the access control policy.
  final String description;
  /// The destination port in the access control policy.
  final String destPort;
  /// The name of the destination port address book in the access control policy.
  final String destPortGroup;
  /// The ports in the destination port address book.
  final List<String> destPortGroupPorts;
  /// The type of the destination port in the access control policy.
  final String destPortType;
  /// The destination address defined in the access control policy.
  final String destination;
  /// The CIDR blocks in the destination address book.
  final List<String> destinationGroupCidrs;
  /// The type of the destination address book in the access control policy.
  final String destinationGroupType;
  /// The type of the destination address in the access control policy.
  final String destinationType;
  /// The direction of the traffic to which the access control policy applies. Valid values: `in`, `out`.
  final String direction;
  /// The DNS resolution result.
  final String dnsResult;
  /// The timestamp of the DNS resolution result.
  final String dnsResultTime;
  /// The number of hits for the access control policy.
  final String hitTimes;
  /// The ID of the Control Policy. It formats as `<acl_uuid>:<direction>`.
  final String id;
  /// The priority of the access control policy.
  final int order;
  /// The type of the protocol in the access control policy. Valid values: If `direction` is  `in`, the valid value is `ANY`. If `direction` is `out`, the valid values are `ANY`, `TCP`, `UDP`, `ICMP`.
  final String proto;
  /// Indicates whether the access control policy is enabled.
  final bool release;
  /// The source address in the access control policy.
  final String source;
  /// The CIDR blocks in the source address book.
  final List<String> sourceGroupCidrs;
  /// The type of the source address book in the access control policy.
  final String sourceGroupType;
  /// The type of the source address in the access control policy.
  final String sourceType;

  /// Creates a new [GetControlPoliciesPolicy].
  /// [aclAction] The action that Cloud Firewall performs on the traffic. Valid values: `accept`, `drop`, `log`.
  /// [aclUuid] The unique ID of the access control policy.
  /// [applicationId] The application ID in the access control policy.
  /// [applicationName] The type of the application that the access control policy supports.
  /// [description] The description of the access control policy.
  /// [destPort] The destination port in the access control policy.
  /// [destPortGroup] The name of the destination port address book in the access control policy.
  /// [destPortGroupPorts] The ports in the destination port address book.
  /// [destPortType] The type of the destination port in the access control policy.
  /// [destination] The destination address defined in the access control policy.
  /// [destinationGroupCidrs] The CIDR blocks in the destination address book.
  /// [destinationGroupType] The type of the destination address book in the access control policy.
  /// [destinationType] The type of the destination address in the access control policy.
  /// [direction] The direction of the traffic to which the access control policy applies. Valid values: `in`, `out`.
  /// [dnsResult] The DNS resolution result.
  /// [dnsResultTime] The timestamp of the DNS resolution result.
  /// [hitTimes] The number of hits for the access control policy.
  /// [id] The ID of the Control Policy. It formats as `<acl_uuid>:<direction>`.
  /// [order] The priority of the access control policy.
  /// [proto] The type of the protocol in the access control policy. Valid values: If `direction` is  `in`, the valid value is `ANY`. If `direction` is `out`, the valid values are `ANY`, `TCP`, `UDP`, `ICMP`.
  /// [release] Indicates whether the access control policy is enabled.
  /// [source] The source address in the access control policy.
  /// [sourceGroupCidrs] The CIDR blocks in the source address book.
  /// [sourceGroupType] The type of the source address book in the access control policy.
  /// [sourceType] The type of the source address in the access control policy.
  GetControlPoliciesPolicy({
    required this.aclAction,
    required this.aclUuid,
    required this.applicationId,
    required this.applicationName,
    required this.description,
    required this.destPort,
    required this.destPortGroup,
    required this.destPortGroupPorts,
    required this.destPortType,
    required this.destination,
    required this.destinationGroupCidrs,
    required this.destinationGroupType,
    required this.destinationType,
    required this.direction,
    required this.dnsResult,
    required this.dnsResultTime,
    required this.hitTimes,
    required this.id,
    required this.order,
    required this.proto,
    required this.release,
    required this.source,
    required this.sourceGroupCidrs,
    required this.sourceGroupType,
    required this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclAction': aclAction,
      'aclUuid': aclUuid,
      'applicationId': applicationId,
      'applicationName': applicationName,
      'description': description,
      'destPort': destPort,
      'destPortGroup': destPortGroup,
      'destPortGroupPorts': destPortGroupPorts,
      'destPortType': destPortType,
      'destination': destination,
      'destinationGroupCidrs': destinationGroupCidrs,
      'destinationGroupType': destinationGroupType,
      'destinationType': destinationType,
      'direction': direction,
      'dnsResult': dnsResult,
      'dnsResultTime': dnsResultTime,
      'hitTimes': hitTimes,
      'id': id,
      'order': order,
      'proto': proto,
      'release': release,
      'source': source,
      'sourceGroupCidrs': sourceGroupCidrs,
      'sourceGroupType': sourceGroupType,
      'sourceType': sourceType,
    };
  }

  factory GetControlPoliciesPolicy.fromMap(Map<String, dynamic> map) {
    return GetControlPoliciesPolicy(
      aclAction: map['aclAction'] as String,
      aclUuid: map['aclUuid'] as String,
      applicationId: map['applicationId'] as String,
      applicationName: map['applicationName'] as String,
      description: map['description'] as String,
      destPort: map['destPort'] as String,
      destPortGroup: map['destPortGroup'] as String,
      destPortGroupPorts: (map['destPortGroupPorts'] as List).cast<String>(),
      destPortType: map['destPortType'] as String,
      destination: map['destination'] as String,
      destinationGroupCidrs: (map['destinationGroupCidrs'] as List).cast<String>(),
      destinationGroupType: map['destinationGroupType'] as String,
      destinationType: map['destinationType'] as String,
      direction: map['direction'] as String,
      dnsResult: map['dnsResult'] as String,
      dnsResultTime: map['dnsResultTime'] as String,
      hitTimes: map['hitTimes'] as String,
      id: map['id'] as String,
      order: map['order'] as int,
      proto: map['proto'] as String,
      release: map['release'] as bool,
      source: map['source'] as String,
      sourceGroupCidrs: (map['sourceGroupCidrs'] as List).cast<String>(),
      sourceGroupType: map['sourceGroupType'] as String,
      sourceType: map['sourceType'] as String,
    );
  }
}

