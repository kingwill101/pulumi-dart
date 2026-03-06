// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetControlPoliciesPolicy {
  /// The action that Cloud Firewall performs on the traffic. Valid values: `accept`, `drop`, `log`.
  final pulumi.Input<String> aclAction;
  /// The unique ID of the access control policy.
  final pulumi.Input<String> aclUuid;
  /// The application ID in the access control policy.
  final pulumi.Input<String> applicationId;
  /// The type of the application that the access control policy supports.
  final pulumi.Input<String> applicationName;
  /// The description of the access control policy.
  final pulumi.Input<String> description;
  /// The destination port in the access control policy.
  final pulumi.Input<String> destPort;
  /// The name of the destination port address book in the access control policy.
  final pulumi.Input<String> destPortGroup;
  /// The ports in the destination port address book.
  final pulumi.Input<List<String>> destPortGroupPorts;
  /// The type of the destination port in the access control policy.
  final pulumi.Input<String> destPortType;
  /// The destination address defined in the access control policy.
  final pulumi.Input<String> destination;
  /// The CIDR blocks in the destination address book.
  final pulumi.Input<List<String>> destinationGroupCidrs;
  /// The type of the destination address book in the access control policy.
  final pulumi.Input<String> destinationGroupType;
  /// The type of the destination address in the access control policy.
  final pulumi.Input<String> destinationType;
  /// The direction of the traffic to which the access control policy applies. Valid values: `in`, `out`.
  final pulumi.Input<String> direction;
  /// The DNS resolution result.
  final pulumi.Input<String> dnsResult;
  /// The timestamp of the DNS resolution result.
  final pulumi.Input<String> dnsResultTime;
  /// The number of hits for the access control policy.
  final pulumi.Input<String> hitTimes;
  /// The ID of the Control Policy. It formats as `&lt;acl_uuid&gt;:&lt;direction&gt;`.
  final pulumi.Input<String> id;
  /// The priority of the access control policy.
  final pulumi.Input<int> order;
  /// The type of the protocol in the access control policy. Valid values: If `direction` is  `in`, the valid value is `ANY`. If `direction` is `out`, the valid values are `ANY`, `TCP`, `UDP`, `ICMP`.
  final pulumi.Input<String> proto;
  /// Indicates whether the access control policy is enabled.
  final pulumi.Input<bool> release;
  /// The source address in the access control policy.
  final pulumi.Input<String> source;
  /// The CIDR blocks in the source address book.
  final pulumi.Input<List<String>> sourceGroupCidrs;
  /// The type of the source address book in the access control policy.
  final pulumi.Input<String> sourceGroupType;
  /// The type of the source address in the access control policy.
  final pulumi.Input<String> sourceType;

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
  /// [id] The ID of the Control Policy. It formats as `&lt;acl_uuid&gt;:&lt;direction&gt;`.
  /// [order] The priority of the access control policy.
  /// [proto] The type of the protocol in the access control policy. Valid values: If `direction` is  `in`, the valid value is `ANY`. If `direction` is `out`, the valid values are `ANY`, `TCP`, `UDP`, `ICMP`.
  /// [release] Indicates whether the access control policy is enabled.
  /// [source] The source address in the access control policy.
  /// [sourceGroupCidrs] The CIDR blocks in the source address book.
  /// [sourceGroupType] The type of the source address book in the access control policy.
  /// [sourceType] The type of the source address in the access control policy.
  const GetControlPoliciesPolicy({
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
      direction: pulumi.Input.fromValue(map['direction'] as String),
      dnsResult: pulumi.Input.fromValue(map['dnsResult'] as String),
      dnsResultTime: pulumi.Input.fromValue(map['dnsResultTime'] as String),
      hitTimes: pulumi.Input.fromValue(map['hitTimes'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      order: pulumi.Input.fromValue(map['order'] as int),
      proto: pulumi.Input.fromValue(map['proto'] as String),
      release: pulumi.Input.fromValue(map['release'] as bool),
      source: pulumi.Input.fromValue(map['source'] as String),
      sourceGroupCidrs: pulumi.Input.fromValue((map['sourceGroupCidrs'] as List).cast<String>()),
      sourceGroupType: pulumi.Input.fromValue(map['sourceGroupType'] as String),
      sourceType: pulumi.Input.fromValue(map['sourceType'] as String),
    );
  }
}

