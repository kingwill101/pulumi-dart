// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FirewallVpcFirewallControlPolicy resources.
class FirewallVpcFirewallControlPolicyState {
  /// The action that Cloud Firewall performs on the traffic. Valid values: `accept`, `drop`, `log`.
  final pulumi.Input<String>? aclAction;
  /// Access control over VPC firewalls strategy unique identifier.
  final pulumi.Input<String>? aclUuid;
  /// Policy specifies the application ID.
  final pulumi.Input<String>? applicationId;
  /// The type of the applications that the access control policy supports. Valid values: `FTP`, `HTTP`, `HTTPS`, `MySQL`, `SMTP`, `SMTPS`, `RDP`, `VNC`, `SSH`, `Redis`, `MQTT`, `MongoDB`, `Memcache`, `SSL`, `ANY`.
  final pulumi.Input<String>? applicationName;
  /// The list of application types that the access control policy supports.
  /// > **NOTE:** If `proto` is set to `TCP`, you can set `application_name_list` to any valid value. If `proto` is set to `UDP`, `ICMP`, or `ANY`, you can only set `application_name_list` to `["ANY"]`. From version 1.267.0, You must specify at least one of the `application_name_list` and `application_name`. If you specify both `application_name_list` and `application_name`, only the `application_name_list` takes effect.
  final pulumi.Input<List<String>>? applicationNameLists;
  /// (Available since v1.267.0) The time when the policy was created.
  final pulumi.Input<int>? createTime;
  /// Access control over VPC firewalls description of the strategy information.
  final pulumi.Input<String>? description;
  /// The destination port in the access control policy. **Note:** If `dest_port_type` is set to `port`, you must specify this parameter.
  final pulumi.Input<String>? destPort;
  /// Access control policy in the access traffic of the destination port address book name. **Note:** If `dest_port_type` is set to `group`, you must specify this parameter.
  final pulumi.Input<String>? destPortGroup;
  /// Port Address Book port list.
  final pulumi.Input<List<String>>? destPortGroupPorts;
  /// The type of the destination port in the access control policy. Valid values: `port`, `group`.
  final pulumi.Input<String>? destPortType;
  /// The destination address in the access control policy. Valid values:
  /// - If `destination_type` is set to `net`, the value of `destination` must be a CIDR block.
  /// - If `destination_type` is set to `group`, the value of `destination` must be an address book.
  /// - If `destination_type` is set to `domain`, the value of `destination` must be a domain name.
  final pulumi.Input<String>? destination;
  /// Destination address book defined in the address list.
  final pulumi.Input<List<String>>? destinationGroupCidrs;
  /// The destination address book type in the access control policy.
  final pulumi.Input<String>? destinationGroupType;
  /// The type of the destination address in the access control policy. Valid values: `net`, `group`, `domain`.
  final pulumi.Input<String>? destinationType;
  /// The domain name resolution method for the access control policy. Valid values: `FQDN`, `DNS`, `FQDN_AND_DNS`.
  final pulumi.Input<String>? domainResolveType;
  /// The end time of the policy validity period.
  final pulumi.Input<int>? endTime;
  /// Control strategy of hits per second.
  final pulumi.Input<int>? hitTimes;
  /// The language of the content within the request and response. Valid values: `zh`, `en`.
  final pulumi.Input<String>? lang;
  /// The UID of the member account of the current Alibaba cloud account.
  final pulumi.Input<String>? memberUid;
  /// The priority of the access control policy. The priority value starts from 1. A smaller priority value indicates a higher priority.
  final pulumi.Input<int>? order;
  /// The type of the protocol in the access control policy. Valid values: `ANY`, `TCP`, `UDP`, `ICMP`.
  final pulumi.Input<String>? proto;
  /// The enabled status of the access control policy. The policy is enabled by default after it is created.. Valid values:
  final pulumi.Input<String>? release;
  /// The days of the week or month on which the policy is recurrently active. Valid values:
  /// - If `repeat_type` is set to `Weekly`. Valid values: `0` to `6`.
  /// - If `repeat_type` is set to `Monthly`. Valid values: `1` to `31`.
  final pulumi.Input<List<int>>? repeatDays;
  /// The recurring end time of the policy validity period.
  final pulumi.Input<String>? repeatEndTime;
  /// The recurring start time of the policy validity period.
  final pulumi.Input<String>? repeatStartTime;
  /// The recurrence type for the policy validity period. Default value: `Permanent`. Valid values: `Permanent`, `None`, `Daily`, `Weekly`, `Monthly`.
  final pulumi.Input<String>? repeatType;
  /// Access control over VPC firewalls strategy in the source address.
  final pulumi.Input<String>? source;
  /// SOURCE address of the address list.
  final pulumi.Input<List<String>>? sourceGroupCidrs;
  /// The source address type in the access control policy.
  final pulumi.Input<String>? sourceGroupType;
  /// The type of the source address in the access control policy. Valid values: `net`, `group`.
  final pulumi.Input<String>? sourceType;
  /// The start time of the policy validity period.
  final pulumi.Input<int>? startTime;
  /// The ID of the VPC firewall instance. Valid values:
  /// - When the VPC firewall protects traffic between two VPCs connected through the cloud enterprise network, the policy group ID uses the cloud enterprise network instance ID.
  /// - When the VPC firewall protects traffic between two VPCs connected through the express connection, the policy group ID uses the ID of the VPC firewall instance.
  final pulumi.Input<String>? vpcFirewallId;

  /// Creates a new [FirewallVpcFirewallControlPolicyState].
  /// [aclAction] The action that Cloud Firewall performs on the traffic. Valid values: `accept`, `drop`, `log`.
  /// [aclUuid] Access control over VPC firewalls strategy unique identifier.
  /// [applicationId] Policy specifies the application ID.
  /// [applicationName] The type of the applications that the access control policy supports. Valid values: `FTP`, `HTTP`, `HTTPS`, `MySQL`, `SMTP`, `SMTPS`, `RDP`, `VNC`, `SSH`, `Redis`, `MQTT`, `MongoDB`, `Memcache`, `SSL`, `ANY`.
  /// [applicationNameLists] The list of application types that the access control policy supports.
  /// [createTime] (Available since v1.267.0) The time when the policy was created.
  /// [description] Access control over VPC firewalls description of the strategy information.
  /// [destPort] The destination port in the access control policy. **Note:** If `dest_port_type` is set to `port`, you must specify this parameter.
  /// [destPortGroup] Access control policy in the access traffic of the destination port address book name. **Note:** If `dest_port_type` is set to `group`, you must specify this parameter.
  /// [destPortGroupPorts] Port Address Book port list.
  /// [destPortType] The type of the destination port in the access control policy. Valid values: `port`, `group`.
  /// [destination] The destination address in the access control policy. Valid values:
  /// [destinationGroupCidrs] Destination address book defined in the address list.
  /// [destinationGroupType] The destination address book type in the access control policy.
  /// [destinationType] The type of the destination address in the access control policy. Valid values: `net`, `group`, `domain`.
  /// [domainResolveType] The domain name resolution method for the access control policy. Valid values: `FQDN`, `DNS`, `FQDN_AND_DNS`.
  /// [endTime] The end time of the policy validity period.
  /// [hitTimes] Control strategy of hits per second.
  /// [lang] The language of the content within the request and response. Valid values: `zh`, `en`.
  /// [memberUid] The UID of the member account of the current Alibaba cloud account.
  /// [order] The priority of the access control policy. The priority value starts from 1. A smaller priority value indicates a higher priority.
  /// [proto] The type of the protocol in the access control policy. Valid values: `ANY`, `TCP`, `UDP`, `ICMP`.
  /// [release] The enabled status of the access control policy. The policy is enabled by default after it is created.. Valid values:
  /// [repeatDays] The days of the week or month on which the policy is recurrently active. Valid values:
  /// [repeatEndTime] The recurring end time of the policy validity period.
  /// [repeatStartTime] The recurring start time of the policy validity period.
  /// [repeatType] The recurrence type for the policy validity period. Default value: `Permanent`. Valid values: `Permanent`, `None`, `Daily`, `Weekly`, `Monthly`.
  /// [source] Access control over VPC firewalls strategy in the source address.
  /// [sourceGroupCidrs] SOURCE address of the address list.
  /// [sourceGroupType] The source address type in the access control policy.
  /// [sourceType] The type of the source address in the access control policy. Valid values: `net`, `group`.
  /// [startTime] The start time of the policy validity period.
  /// [vpcFirewallId] The ID of the VPC firewall instance. Valid values:
  FirewallVpcFirewallControlPolicyState({
    pulumi.Output<String>? aclAction,
    pulumi.Output<String>? aclUuid,
    pulumi.Output<String>? applicationId,
    pulumi.Output<String>? applicationName,
    pulumi.Output<List<String>>? applicationNameLists,
    pulumi.Output<int>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? destPort,
    pulumi.Output<String>? destPortGroup,
    pulumi.Output<List<String>>? destPortGroupPorts,
    pulumi.Output<String>? destPortType,
    pulumi.Output<String>? destination,
    pulumi.Output<List<String>>? destinationGroupCidrs,
    pulumi.Output<String>? destinationGroupType,
    pulumi.Output<String>? destinationType,
    pulumi.Output<String>? domainResolveType,
    pulumi.Output<int>? endTime,
    pulumi.Output<int>? hitTimes,
    pulumi.Output<String>? lang,
    pulumi.Output<String>? memberUid,
    pulumi.Output<int>? order,
    pulumi.Output<String>? proto,
    pulumi.Output<String>? release,
    pulumi.Output<List<int>>? repeatDays,
    pulumi.Output<String>? repeatEndTime,
    pulumi.Output<String>? repeatStartTime,
    pulumi.Output<String>? repeatType,
    pulumi.Output<String>? source,
    pulumi.Output<List<String>>? sourceGroupCidrs,
    pulumi.Output<String>? sourceGroupType,
    pulumi.Output<String>? sourceType,
    pulumi.Output<int>? startTime,
    pulumi.Output<String>? vpcFirewallId,
  }) :
      aclAction = pulumi.Input.asOptionalInput<String>(aclAction),
      aclUuid = pulumi.Input.asOptionalInput<String>(aclUuid),
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      applicationName = pulumi.Input.asOptionalInput<String>(applicationName),
      applicationNameLists = pulumi.Input.asOptionalInput<List<String>>(applicationNameLists),
      createTime = pulumi.Input.asOptionalInput<int>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      destPort = pulumi.Input.asOptionalInput<String>(destPort),
      destPortGroup = pulumi.Input.asOptionalInput<String>(destPortGroup),
      destPortGroupPorts = pulumi.Input.asOptionalInput<List<String>>(destPortGroupPorts),
      destPortType = pulumi.Input.asOptionalInput<String>(destPortType),
      destination = pulumi.Input.asOptionalInput<String>(destination),
      destinationGroupCidrs = pulumi.Input.asOptionalInput<List<String>>(destinationGroupCidrs),
      destinationGroupType = pulumi.Input.asOptionalInput<String>(destinationGroupType),
      destinationType = pulumi.Input.asOptionalInput<String>(destinationType),
      domainResolveType = pulumi.Input.asOptionalInput<String>(domainResolveType),
      endTime = pulumi.Input.asOptionalInput<int>(endTime),
      hitTimes = pulumi.Input.asOptionalInput<int>(hitTimes),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      memberUid = pulumi.Input.asOptionalInput<String>(memberUid),
      order = pulumi.Input.asOptionalInput<int>(order),
      proto = pulumi.Input.asOptionalInput<String>(proto),
      release = pulumi.Input.asOptionalInput<String>(release),
      repeatDays = pulumi.Input.asOptionalInput<List<int>>(repeatDays),
      repeatEndTime = pulumi.Input.asOptionalInput<String>(repeatEndTime),
      repeatStartTime = pulumi.Input.asOptionalInput<String>(repeatStartTime),
      repeatType = pulumi.Input.asOptionalInput<String>(repeatType),
      source = pulumi.Input.asOptionalInput<String>(source),
      sourceGroupCidrs = pulumi.Input.asOptionalInput<List<String>>(sourceGroupCidrs),
      sourceGroupType = pulumi.Input.asOptionalInput<String>(sourceGroupType),
      sourceType = pulumi.Input.asOptionalInput<String>(sourceType),
      startTime = pulumi.Input.asOptionalInput<int>(startTime),
      vpcFirewallId = pulumi.Input.asOptionalInput<String>(vpcFirewallId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclAction': ?aclAction,
      'aclUuid': ?aclUuid,
      'applicationId': ?applicationId,
      'applicationName': ?applicationName,
      'applicationNameLists': ?applicationNameLists,
      'createTime': ?createTime,
      'description': ?description,
      'destPort': ?destPort,
      'destPortGroup': ?destPortGroup,
      'destPortGroupPorts': ?destPortGroupPorts,
      'destPortType': ?destPortType,
      'destination': ?destination,
      'destinationGroupCidrs': ?destinationGroupCidrs,
      'destinationGroupType': ?destinationGroupType,
      'destinationType': ?destinationType,
      'domainResolveType': ?domainResolveType,
      'endTime': ?endTime,
      'hitTimes': ?hitTimes,
      'lang': ?lang,
      'memberUid': ?memberUid,
      'order': ?order,
      'proto': ?proto,
      'release': ?release,
      'repeatDays': ?repeatDays,
      'repeatEndTime': ?repeatEndTime,
      'repeatStartTime': ?repeatStartTime,
      'repeatType': ?repeatType,
      'source': ?source,
      'sourceGroupCidrs': ?sourceGroupCidrs,
      'sourceGroupType': ?sourceGroupType,
      'sourceType': ?sourceType,
      'startTime': ?startTime,
      'vpcFirewallId': ?vpcFirewallId,
    };
  }

  factory FirewallVpcFirewallControlPolicyState.fromMap(Map<String, dynamic> map) {
    return FirewallVpcFirewallControlPolicyState(
      aclAction: map['aclAction'] == null ? null : pulumi.Output.create<String>(map['aclAction'] as String),
      aclUuid: map['aclUuid'] == null ? null : pulumi.Output.create<String>(map['aclUuid'] as String),
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      applicationName: map['applicationName'] == null ? null : pulumi.Output.create<String>(map['applicationName'] as String),
      applicationNameLists: map['applicationNameLists'] == null ? null : pulumi.Output.create<List<String>>((map['applicationNameLists'] as List).cast<String>()),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<int>(map['createTime'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destPort: map['destPort'] == null ? null : pulumi.Output.create<String>(map['destPort'] as String),
      destPortGroup: map['destPortGroup'] == null ? null : pulumi.Output.create<String>(map['destPortGroup'] as String),
      destPortGroupPorts: map['destPortGroupPorts'] == null ? null : pulumi.Output.create<List<String>>((map['destPortGroupPorts'] as List).cast<String>()),
      destPortType: map['destPortType'] == null ? null : pulumi.Output.create<String>(map['destPortType'] as String),
      destination: map['destination'] == null ? null : pulumi.Output.create<String>(map['destination'] as String),
      destinationGroupCidrs: map['destinationGroupCidrs'] == null ? null : pulumi.Output.create<List<String>>((map['destinationGroupCidrs'] as List).cast<String>()),
      destinationGroupType: map['destinationGroupType'] == null ? null : pulumi.Output.create<String>(map['destinationGroupType'] as String),
      destinationType: map['destinationType'] == null ? null : pulumi.Output.create<String>(map['destinationType'] as String),
      domainResolveType: map['domainResolveType'] == null ? null : pulumi.Output.create<String>(map['domainResolveType'] as String),
      endTime: map['endTime'] == null ? null : pulumi.Output.create<int>(map['endTime'] as int),
      hitTimes: map['hitTimes'] == null ? null : pulumi.Output.create<int>(map['hitTimes'] as int),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      memberUid: map['memberUid'] == null ? null : pulumi.Output.create<String>(map['memberUid'] as String),
      order: map['order'] == null ? null : pulumi.Output.create<int>(map['order'] as int),
      proto: map['proto'] == null ? null : pulumi.Output.create<String>(map['proto'] as String),
      release: map['release'] == null ? null : pulumi.Output.create<String>(map['release'] as String),
      repeatDays: map['repeatDays'] == null ? null : pulumi.Output.create<List<int>>((map['repeatDays'] as List).cast<int>()),
      repeatEndTime: map['repeatEndTime'] == null ? null : pulumi.Output.create<String>(map['repeatEndTime'] as String),
      repeatStartTime: map['repeatStartTime'] == null ? null : pulumi.Output.create<String>(map['repeatStartTime'] as String),
      repeatType: map['repeatType'] == null ? null : pulumi.Output.create<String>(map['repeatType'] as String),
      source: map['source'] == null ? null : pulumi.Output.create<String>(map['source'] as String),
      sourceGroupCidrs: map['sourceGroupCidrs'] == null ? null : pulumi.Output.create<List<String>>((map['sourceGroupCidrs'] as List).cast<String>()),
      sourceGroupType: map['sourceGroupType'] == null ? null : pulumi.Output.create<String>(map['sourceGroupType'] as String),
      sourceType: map['sourceType'] == null ? null : pulumi.Output.create<String>(map['sourceType'] as String),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<int>(map['startTime'] as int),
      vpcFirewallId: map['vpcFirewallId'] == null ? null : pulumi.Output.create<String>(map['vpcFirewallId'] as String),
    );
  }
}

