// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcFirewallControlPoliciesPolicy {
  /// The action that Cloud Firewall performs on the traffic. Valid values: `accept`, `drop`, `log`.
  final pulumi.Input<String> aclAction;
  /// Access control over VPC firewalls strategy unique identifier.
  final pulumi.Input<String> aclUuid;
  /// Policy specifies the application ID.
  final pulumi.Input<String> applicationId;
  /// Access control over VPC firewalls policies support the application types.
  final pulumi.Input<String> applicationName;
  /// Access control over VPC firewalls description of the strategy information.
  final pulumi.Input<String> description;
  /// Access control over VPC firewalls strategy access traffic of the destination port.
  final pulumi.Input<String> destPort;
  /// Access control policy in the access traffic of the destination port address book name.
  final pulumi.Input<String> destPortGroup;
  /// Port Address Book port list.
  final pulumi.Input<List<String>> destPortGroupPorts;
  /// Access control over VPC firewalls strategy access traffic of the destination port type.
  final pulumi.Input<String> destPortType;
  /// Access control over VPC firewalls strategy the destination address in.
  final pulumi.Input<String> destination;
  /// Destination address book defined in the address list.
  final pulumi.Input<List<String>> destinationGroupCidrs;
  /// The destination address book type in the access control policy. Value: `ip`, `domain`.
  final pulumi.Input<String> destinationGroupType;
  /// Access control over VPC firewalls strategy in the destination address of the type.
  final pulumi.Input<String> destinationType;
  /// Control strategy of hits per second.
  final pulumi.Input<int> hitTimes;
  /// The ID of the Cloud Firewall Vpc Firewall Control Policy.
  final pulumi.Input<String> id;
  /// The UID of the member account of the current Alibaba cloud account.
  final pulumi.Input<String> memberUid;
  /// Access control over VPC firewalls policies will go into effect of priority. The priority value starts from 1, the smaller the priority number, the higher the priority. -1 represents the lowest priority.
  final pulumi.Input<int> order;
  /// Access control over VPC firewalls strategy access traffic of the protocol type.
  final pulumi.Input<String> proto;
  /// The enabled status of the access control policy. The policy is enabled by default after it is created. Value:
  /// - **true**: Enable access control policies
  /// - **false**: does not enable access control policies.
  final pulumi.Input<bool> release;
  /// Access control over VPC firewalls strategy in the source address.
  final pulumi.Input<String> source;
  /// SOURCE address of the address list.
  final pulumi.Input<List<String>> sourceGroupCidrs;
  /// The source address type in the access control policy. Unique value: **ip**. The IP address book contains one or more IP address segments.
  final pulumi.Input<String> sourceGroupType;
  /// Access control over VPC firewalls policy source address type.
  final pulumi.Input<String> sourceType;
  /// The ID of the VPC firewall instance. Value:
  /// - When the VPC firewall protects traffic between two VPCs connected through the cloud enterprise network, the policy group ID uses the cloud enterprise network instance ID.
  /// - When the VPC firewall protects traffic between two VPCs connected through the express connection, the policy group ID uses the ID of the VPC firewall instance.
  final pulumi.Input<String> vpcFirewallId;

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
      aclAction: (map['aclAction'] as String).input(),
      aclUuid: (map['aclUuid'] as String).input(),
      applicationId: (map['applicationId'] as String).input(),
      applicationName: (map['applicationName'] as String).input(),
      description: (map['description'] as String).input(),
      destPort: (map['destPort'] as String).input(),
      destPortGroup: (map['destPortGroup'] as String).input(),
      destPortGroupPorts: ((map['destPortGroupPorts'] as List).cast<String>()).input(),
      destPortType: (map['destPortType'] as String).input(),
      destination: (map['destination'] as String).input(),
      destinationGroupCidrs: ((map['destinationGroupCidrs'] as List).cast<String>()).input(),
      destinationGroupType: (map['destinationGroupType'] as String).input(),
      destinationType: (map['destinationType'] as String).input(),
      hitTimes: (map['hitTimes'] as int).input(),
      id: (map['id'] as String).input(),
      memberUid: (map['memberUid'] as String).input(),
      order: (map['order'] as int).input(),
      proto: (map['proto'] as String).input(),
      release: (map['release'] as bool).input(),
      source: (map['source'] as String).input(),
      sourceGroupCidrs: ((map['sourceGroupCidrs'] as List).cast<String>()).input(),
      sourceGroupType: (map['sourceGroupType'] as String).input(),
      sourceType: (map['sourceType'] as String).input(),
      vpcFirewallId: (map['vpcFirewallId'] as String).input(),
    );
  }
}

