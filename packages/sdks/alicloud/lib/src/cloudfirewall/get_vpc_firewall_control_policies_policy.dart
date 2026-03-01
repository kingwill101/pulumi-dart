// ignore_for_file: unused_element, unnecessary_cast


class GetVpcFirewallControlPoliciesPolicy {
  /// The action that Cloud Firewall performs on the traffic. Valid values: `accept`, `drop`, `log`.
  final String aclAction;
  /// Access control over VPC firewalls strategy unique identifier.
  final String aclUuid;
  /// Policy specifies the application ID.
  final String applicationId;
  /// Access control over VPC firewalls policies support the application types.
  final String applicationName;
  /// Access control over VPC firewalls description of the strategy information.
  final String description;
  /// Access control over VPC firewalls strategy access traffic of the destination port.
  final String destPort;
  /// Access control policy in the access traffic of the destination port address book name.
  final String destPortGroup;
  /// Port Address Book port list.
  final List<String> destPortGroupPorts;
  /// Access control over VPC firewalls strategy access traffic of the destination port type.
  final String destPortType;
  /// Access control over VPC firewalls strategy the destination address in.
  final String destination;
  /// Destination address book defined in the address list.
  final List<String> destinationGroupCidrs;
  /// The destination address book type in the access control policy. Value: `ip`, `domain`.
  final String destinationGroupType;
  /// Access control over VPC firewalls strategy in the destination address of the type.
  final String destinationType;
  /// Control strategy of hits per second.
  final int hitTimes;
  /// The ID of the Cloud Firewall Vpc Firewall Control Policy.
  final String id;
  /// The UID of the member account of the current Alibaba cloud account.
  final String memberUid;
  /// Access control over VPC firewalls policies will go into effect of priority. The priority value starts from 1, the smaller the priority number, the higher the priority. -1 represents the lowest priority.
  final int order;
  /// Access control over VPC firewalls strategy access traffic of the protocol type.
  final String proto;
  /// The enabled status of the access control policy. The policy is enabled by default after it is created. Value:
  /// - **true**: Enable access control policies
  /// - **false**: does not enable access control policies.
  final bool release;
  /// Access control over VPC firewalls strategy in the source address.
  final String source;
  /// SOURCE address of the address list.
  final List<String> sourceGroupCidrs;
  /// The source address type in the access control policy. Unique value: **ip**. The IP address book contains one or more IP address segments.
  final String sourceGroupType;
  /// Access control over VPC firewalls policy source address type.
  final String sourceType;
  /// The ID of the VPC firewall instance. Value:
  /// - When the VPC firewall protects traffic between two VPCs connected through the cloud enterprise network, the policy group ID uses the cloud enterprise network instance ID.
  /// - When the VPC firewall protects traffic between two VPCs connected through the express connection, the policy group ID uses the ID of the VPC firewall instance.
  final String vpcFirewallId;

  /// Creates a new [GetVpcFirewallControlPoliciesPolicy].
  /// [aclAction] The action that Cloud Firewall performs on the traffic. Valid values: `accept`, `drop`, `log`.
  /// [aclUuid] Access control over VPC firewalls strategy unique identifier.
  /// [applicationId] Policy specifies the application ID.
  /// [applicationName] Access control over VPC firewalls policies support the application types.
  /// [description] Access control over VPC firewalls description of the strategy information.
  /// [destPort] Access control over VPC firewalls strategy access traffic of the destination port.
  /// [destPortGroup] Access control policy in the access traffic of the destination port address book name.
  /// [destPortGroupPorts] Port Address Book port list.
  /// [destPortType] Access control over VPC firewalls strategy access traffic of the destination port type.
  /// [destination] Access control over VPC firewalls strategy the destination address in.
  /// [destinationGroupCidrs] Destination address book defined in the address list.
  /// [destinationGroupType] The destination address book type in the access control policy. Value: `ip`, `domain`.
  /// [destinationType] Access control over VPC firewalls strategy in the destination address of the type.
  /// [hitTimes] Control strategy of hits per second.
  /// [id] The ID of the Cloud Firewall Vpc Firewall Control Policy.
  /// [memberUid] The UID of the member account of the current Alibaba cloud account.
  /// [order] Access control over VPC firewalls policies will go into effect of priority. The priority value starts from 1, the smaller the priority number, the higher the priority. -1 represents the lowest priority.
  /// [proto] Access control over VPC firewalls strategy access traffic of the protocol type.
  /// [release] The enabled status of the access control policy. The policy is enabled by default after it is created. Value:
  /// [source] Access control over VPC firewalls strategy in the source address.
  /// [sourceGroupCidrs] SOURCE address of the address list.
  /// [sourceGroupType] The source address type in the access control policy. Unique value: **ip**. The IP address book contains one or more IP address segments.
  /// [sourceType] Access control over VPC firewalls policy source address type.
  /// [vpcFirewallId] The ID of the VPC firewall instance. Value:
  GetVpcFirewallControlPoliciesPolicy({
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
    required this.hitTimes,
    required this.id,
    required this.memberUid,
    required this.order,
    required this.proto,
    required this.release,
    required this.source,
    required this.sourceGroupCidrs,
    required this.sourceGroupType,
    required this.sourceType,
    required this.vpcFirewallId,
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
      'hitTimes': hitTimes,
      'id': id,
      'memberUid': memberUid,
      'order': order,
      'proto': proto,
      'release': release,
      'source': source,
      'sourceGroupCidrs': sourceGroupCidrs,
      'sourceGroupType': sourceGroupType,
      'sourceType': sourceType,
      'vpcFirewallId': vpcFirewallId,
    };
  }

  factory GetVpcFirewallControlPoliciesPolicy.fromMap(Map<String, dynamic> map) {
    return GetVpcFirewallControlPoliciesPolicy(
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
      hitTimes: map['hitTimes'] as int,
      id: map['id'] as String,
      memberUid: map['memberUid'] as String,
      order: map['order'] as int,
      proto: map['proto'] as String,
      release: map['release'] as bool,
      source: map['source'] as String,
      sourceGroupCidrs: (map['sourceGroupCidrs'] as List).cast<String>(),
      sourceGroupType: map['sourceGroupType'] as String,
      sourceType: map['sourceType'] as String,
      vpcFirewallId: map['vpcFirewallId'] as String,
    );
  }
}

