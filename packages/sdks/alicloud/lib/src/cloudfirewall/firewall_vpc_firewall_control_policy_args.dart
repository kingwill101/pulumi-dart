// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfirewall_firewall_vpc_firewall_control_policy_firewall_vpc_firewall_control_policy_args_doc}
/// The set of arguments for FirewallVpcFirewallControlPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudfirewall_firewall_vpc_firewall_control_policy_firewall_vpc_firewall_control_policy_args_doc}
class FirewallVpcFirewallControlPolicyArgs {
  /// The action that Cloud Firewall performs on the traffic. Valid values: `accept`, `drop`, `log`.
  final pulumi.Input<String> aclAction;
  /// The type of the applications that the access control policy supports. Valid values: `FTP`, `HTTP`, `HTTPS`, `MySQL`, `SMTP`, `SMTPS`, `RDP`, `VNC`, `SSH`, `Redis`, `MQTT`, `MongoDB`, `Memcache`, `SSL`, `ANY`.
  final pulumi.Input<String>? applicationName;
  /// The list of application types that the access control policy supports.
  /// > **NOTE:** If `proto` is set to `TCP`, you can set `application_name_list` to any valid value. If `proto` is set to `UDP`, `ICMP`, or `ANY`, you can only set `application_name_list` to `["ANY"]`. From version 1.267.0, You must specify at least one of the `application_name_list` and `application_name`. If you specify both `application_name_list` and `application_name`, only the `application_name_list` takes effect.
  final pulumi.Input<List<String>>? applicationNameLists;
  /// Access control over VPC firewalls description of the strategy information.
  final pulumi.Input<String> description;
  /// The destination port in the access control policy. **Note:** If `dest_port_type` is set to `port`, you must specify this parameter.
  final pulumi.Input<String>? destPort;
  /// Access control policy in the access traffic of the destination port address book name. **Note:** If `dest_port_type` is set to `group`, you must specify this parameter.
  final pulumi.Input<String>? destPortGroup;
  /// The type of the destination port in the access control policy. Valid values: `port`, `group`.
  final pulumi.Input<String>? destPortType;
  /// The destination address in the access control policy. Valid values:
  /// - If `destination_type` is set to `net`, the value of `destination` must be a CIDR block.
  /// - If `destination_type` is set to `group`, the value of `destination` must be an address book.
  /// - If `destination_type` is set to `domain`, the value of `destination` must be a domain name.
  final pulumi.Input<String> destination;
  /// The type of the destination address in the access control policy. Valid values: `net`, `group`, `domain`.
  final pulumi.Input<String> destinationType;
  /// The domain name resolution method for the access control policy. Valid values: `FQDN`, `DNS`, `FQDN_AND_DNS`.
  final pulumi.Input<String>? domainResolveType;
  /// The end time of the policy validity period.
  final pulumi.Input<int>? endTime;
  /// The language of the content within the request and response. Valid values: `zh`, `en`.
  final pulumi.Input<String>? lang;
  /// The UID of the member account of the current Alibaba cloud account.
  final pulumi.Input<String>? memberUid;
  /// The priority of the access control policy. The priority value starts from 1. A smaller priority value indicates a higher priority.
  final pulumi.Input<int> order;
  /// The type of the protocol in the access control policy. Valid values: `ANY`, `TCP`, `UDP`, `ICMP`.
  final pulumi.Input<String> proto;
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
  final pulumi.Input<String> source;
  /// The type of the source address in the access control policy. Valid values: `net`, `group`.
  final pulumi.Input<String> sourceType;
  /// The start time of the policy validity period.
  final pulumi.Input<int>? startTime;
  /// The ID of the VPC firewall instance. Valid values:
  /// - When the VPC firewall protects traffic between two VPCs connected through the cloud enterprise network, the policy group ID uses the cloud enterprise network instance ID.
  /// - When the VPC firewall protects traffic between two VPCs connected through the express connection, the policy group ID uses the ID of the VPC firewall instance.
  final pulumi.Input<String> vpcFirewallId;

  /// Creates a new [FirewallVpcFirewallControlPolicyArgs].
  /// [aclAction] The action that Cloud Firewall performs on the traffic. Valid values: `accept`, `drop`, `log`.
  /// [applicationName] The type of the applications that the access control policy supports. Valid values: `FTP`, `HTTP`, `HTTPS`, `MySQL`, `SMTP`, `SMTPS`, `RDP`, `VNC`, `SSH`, `Redis`, `MQTT`, `MongoDB`, `Memcache`, `SSL`, `ANY`.
  /// [applicationNameLists] The list of application types that the access control policy supports.
  /// [description] Access control over VPC firewalls description of the strategy information.
  /// [destPort] The destination port in the access control policy. **Note:** If `dest_port_type` is set to `port`, you must specify this parameter.
  /// [destPortGroup] Access control policy in the access traffic of the destination port address book name. **Note:** If `dest_port_type` is set to `group`, you must specify this parameter.
  /// [destPortType] The type of the destination port in the access control policy. Valid values: `port`, `group`.
  /// [destination] The destination address in the access control policy. Valid values:
  /// [destinationType] The type of the destination address in the access control policy. Valid values: `net`, `group`, `domain`.
  /// [domainResolveType] The domain name resolution method for the access control policy. Valid values: `FQDN`, `DNS`, `FQDN_AND_DNS`.
  /// [endTime] The end time of the policy validity period.
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
  /// [sourceType] The type of the source address in the access control policy. Valid values: `net`, `group`.
  /// [startTime] The start time of the policy validity period.
  /// [vpcFirewallId] The ID of the VPC firewall instance. Valid values:
  FirewallVpcFirewallControlPolicyArgs({
    required this.aclAction,
    this.applicationName,
    this.applicationNameLists,
    required this.description,
    this.destPort,
    this.destPortGroup,
    this.destPortType,
    required this.destination,
    required this.destinationType,
    this.domainResolveType,
    this.endTime,
    this.lang,
    this.memberUid,
    required this.order,
    required this.proto,
    this.release,
    this.repeatDays,
    this.repeatEndTime,
    this.repeatStartTime,
    this.repeatType,
    required this.source,
    required this.sourceType,
    this.startTime,
    required this.vpcFirewallId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclAction': aclAction,
      'applicationName': ?applicationName,
      'applicationNameLists': ?applicationNameLists,
      'description': description,
      'destPort': ?destPort,
      'destPortGroup': ?destPortGroup,
      'destPortType': ?destPortType,
      'destination': destination,
      'destinationType': destinationType,
      'domainResolveType': ?domainResolveType,
      'endTime': ?endTime,
      'lang': ?lang,
      'memberUid': ?memberUid,
      'order': order,
      'proto': proto,
      'release': ?release,
      'repeatDays': ?repeatDays,
      'repeatEndTime': ?repeatEndTime,
      'repeatStartTime': ?repeatStartTime,
      'repeatType': ?repeatType,
      'source': source,
      'sourceType': sourceType,
      'startTime': ?startTime,
      'vpcFirewallId': vpcFirewallId,
    };
  }

  factory FirewallVpcFirewallControlPolicyArgs.fromMap(Map<String, dynamic> map) {
    return FirewallVpcFirewallControlPolicyArgs(
      aclAction: (map['aclAction'] as String).input(),
      applicationName: map['applicationName'] == null ? null : (map['applicationName']! as String).input(),
      applicationNameLists: map['applicationNameLists'] == null ? null : ((map['applicationNameLists']! as List).cast<String>()).input(),
      description: (map['description'] as String).input(),
      destPort: map['destPort'] == null ? null : (map['destPort']! as String).input(),
      destPortGroup: map['destPortGroup'] == null ? null : (map['destPortGroup']! as String).input(),
      destPortType: map['destPortType'] == null ? null : (map['destPortType']! as String).input(),
      destination: (map['destination'] as String).input(),
      destinationType: (map['destinationType'] as String).input(),
      domainResolveType: map['domainResolveType'] == null ? null : (map['domainResolveType']! as String).input(),
      endTime: map['endTime'] == null ? null : (map['endTime']! as int).input(),
      lang: map['lang'] == null ? null : (map['lang']! as String).input(),
      memberUid: map['memberUid'] == null ? null : (map['memberUid']! as String).input(),
      order: (map['order'] as int).input(),
      proto: (map['proto'] as String).input(),
      release: map['release'] == null ? null : (map['release']! as String).input(),
      repeatDays: map['repeatDays'] == null ? null : ((map['repeatDays']! as List).cast<int>()).input(),
      repeatEndTime: map['repeatEndTime'] == null ? null : (map['repeatEndTime']! as String).input(),
      repeatStartTime: map['repeatStartTime'] == null ? null : (map['repeatStartTime']! as String).input(),
      repeatType: map['repeatType'] == null ? null : (map['repeatType']! as String).input(),
      source: (map['source'] as String).input(),
      sourceType: (map['sourceType'] as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as int).input(),
      vpcFirewallId: (map['vpcFirewallId'] as String).input(),
    );
  }
}

