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
      aclAction: pulumi.Input.fromValue(map['aclAction'] as String),
      aclUuid: pulumi.Input.fromValue(map['aclUuid'] as String),
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      applicationName: pulumi.Input.fromValue(map['applicationName'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      destPort: pulumi.Input.fromValue(map['destPort'] as String),
      destPortGroup: pulumi.Input.fromValue(map['destPortGroup'] as String),
      destPortGroupPorts: pulumi.Input.fromValue((map['destPortGroupPorts'] as List).cast<String>()),
      destPortType: pulumi.Input.fromValue(map['destPortType'] as String),
      destination: pulumi.Input.fromValue(map['destination'] as String),
      destinationGroupCidrs: pulumi.Input.fromValue((map['destinationGroupCidrs'] as List).cast<String>()),
      destinationGroupType: pulumi.Input.fromValue(map['destinationGroupType'] as String),
      destinationType: pulumi.Input.fromValue(map['destinationType'] as String),
      hitTimes: pulumi.Input.fromValue(map['hitTimes'] as int),
      id: pulumi.Input.fromValue(map['id'] as String),
      memberUid: pulumi.Input.fromValue(map['memberUid'] as String),
      order: pulumi.Input.fromValue(map['order'] as int),
      proto: pulumi.Input.fromValue(map['proto'] as String),
      release: pulumi.Input.fromValue(map['release'] as bool),
      source: pulumi.Input.fromValue(map['source'] as String),
      sourceGroupCidrs: pulumi.Input.fromValue((map['sourceGroupCidrs'] as List).cast<String>()),
      sourceGroupType: pulumi.Input.fromValue(map['sourceGroupType'] as String),
      sourceType: pulumi.Input.fromValue(map['sourceType'] as String),
      vpcFirewallId: pulumi.Input.fromValue(map['vpcFirewallId'] as String),
    );
  }
}

