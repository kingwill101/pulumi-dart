// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfirewall_nat_firewall_control_policy_nat_firewall_control_policy_args_doc}
/// The set of arguments for NatFirewallControlPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudfirewall_nat_firewall_control_policy_nat_firewall_control_policy_args_doc}
class NatFirewallControlPolicyArgs {
  /// The method (action) of access traffic passing through Cloud Firewall in the security access control policy. Valid values:
  /// - **accept**: Release
  /// - **drop**: Refused
  /// - **log**: Observation.
  final pulumi.Input<String> aclAction;

  /// The list of application types supported by the access control policy.
  final pulumi.Input<List<String>> applicationNameLists;

  /// The description of the access control policy.
  final pulumi.Input<String> description;

  /// The destination port of traffic access in the access control policy. Value:
  /// - When the protocol type is set to ICMP, the value of DestPort is null.
  /// &gt; **NOTE:**  When the protocol type is ICMP, access control on the destination port is not supported.
  /// - When the protocol type is TCP, UDP, or ANY, and the destination port type (DestPortType) IS group, the value of DestPort is null.
  /// &gt; **NOTE:**  When you select group (destination port address book) for the destination port type of the access control policy, you do not need to set a specific destination port number. All ports that need to be controlled by this access control policy are included in the destination port address book.
  /// - When the protocol type is TCP, UDP, or ANY, and the destination port type (DestPortType) is port, the value of DestPort is the destination port number.
  final pulumi.Input<String>? destPort;

  /// The address book name of the destination port of the access traffic in the access control policy.
  /// &gt; **NOTE:**  When DestPortType is set to group, you need to set the destination port address book name.
  final pulumi.Input<String>? destPortGroup;

  /// The destination port type of the access traffic in the security access control policy.
  /// - **port**: port
  /// - **group**: Port Address Book.
  final pulumi.Input<String>? destPortType;

  /// The destination address segment in the access control policy. Valid values:
  /// - When DestinationType is net, Destination is the Destination CIDR. For example: 1.2.XX.XX/24
  /// - When DestinationType IS group, Destination is the name of the Destination address book. For example: db_group
  /// - When DestinationType is domain, Destination is the Destination domain name. For example: * .aliyuncs.com
  /// - When DestinationType is location, Destination is the Destination region. For example: \["BJ11", "ZB"\].
  final pulumi.Input<String> destination;

  /// The destination address type in the access control policy. Valid values:
  /// - **net**: Destination Network segment (CIDR address)
  /// - **group**: Destination Address Book
  /// - **domain**: the destination domain name.
  final pulumi.Input<String> destinationType;

  /// The traffic direction of the access control policy. Valid values:
  /// - **out**: Internal and external traffic access control.
  final pulumi.Input<String> direction;

  /// The domain name resolution method of the access control policy. The policy is enabled by default after it is created. Valid values:
  /// - **0**: Based on FQDN
  /// - **1**: DNS-based dynamic resolution
  /// - **2**: dynamic resolution based on FQDN and DNS.
  final pulumi.Input<int>? domainResolveType;

  /// The end time of the policy validity period of the access control policy. Expresses using the second-level timestamp format. Must be full or half time and at least half an hour greater than the start time.
  /// &gt; **NOTE:**  When RepeatType is set to permit, EndTime is null. When the RepeatType is None, Daily, Weekly, or Monthly, EndTime must have a value and you need to set the end time.
  final pulumi.Input<int>? endTime;

  /// Supported IP address version. Value:
  /// - **4** (default): indicates the IPv4 address.
  final pulumi.Input<String>? ipVersion;

  /// The ID of the NAT gateway instance.
  final pulumi.Input<String> natGatewayId;

  /// The priority for the access control policy to take effect. The priority number increases sequentially from 1, and the smaller the priority number, the higher the priority.
  final pulumi.Input<String> newOrder;

  /// The security protocol type for traffic access in the access control policy. Valid values:
  /// - ANY (indicates that all protocol types are queried)
  /// - TCP
  /// - UDP
  /// - ICMP.
  final pulumi.Input<String> proto;

  /// The enabled status of the access control policy. The policy is enabled by default after it is created. Value:
  /// - **true**: Enable access control policy
  /// - **false**: Do not enable access control policies.
  final pulumi.Input<String>? release;

  /// Collection of recurring dates for the policy validity period of the access control policy.
  /// - When RepeatType is 'Permanent', 'None', 'Daily', RepeatDays is an empty collection. For example:[]
  /// - When RepeatType is Weekly, RepeatDays cannot be empty. For example:["0", "6"]. When the RepeatType is set to Weekly, RepeatDays cannot be repeated.
  /// - RepeatDays cannot be empty when RepeatType is 'Monthly. For example:[1, 31]. When RepeatType is set to Monthly, RepeatDays cannot be repeated.
  final pulumi.Input<List<int>>? repeatDays;

  /// The recurring end time of the policy validity period of the access control policy. For example: 23:30, it must be the whole point or half point time, and at least half an hour greater than the repeat start time.
  /// &gt; **NOTE:**  When RepeatType is set to normal or None, RepeatEndTime is null. When the RepeatType is Daily, Weekly, or Monthly, the RepeatEndTime must have a value, and you need to set the repeat end time.
  final pulumi.Input<String>? repeatEndTime;

  /// The recurring start time of the policy validity period of the access control policy. For example: 08:00, it must be the whole point or half point time, and at least half an hour less than the repeat end time.
  /// &gt; **NOTE:**  When RepeatType is set to permit or None, RepeatStartTime is empty. When the RepeatType is Daily, Weekly, or Monthly, the RepeatStartTime must have a value and you need to set the repeat start time.
  final pulumi.Input<String>? repeatStartTime;

  /// The type of repetition for the policy validity period of the access control policy. Value:
  /// - **Permit** (default): Always
  /// - **None**: Specify a single time
  /// - **Daily**: Daily
  /// - **Weekly**: Weekly
  /// - **Monthly**: Monthly.
  final pulumi.Input<String>? repeatType;

  /// The source address in the access control policy. Valid values:
  /// - When **SourceType** is set to 'net', Source is the Source CIDR address. For example: 10.2.4.0/24
  /// - When **SourceType** is set to 'group', Source is the name of the Source address book. For example: db_group.
  final pulumi.Input<String> source;

  /// The source address type in the access control policy. Valid values:
  /// - **net**: the source network segment (CIDR address)
  /// - **group**: source address book
  final pulumi.Input<String> sourceType;

  /// The start time of the policy validity period of the access control policy. Expresses using the second-level timestamp format. It must be a full or half hour and at least half an hour less than the end time.
  /// &gt; **NOTE:**  When RepeatType is set to normal, StartTime is null. When the RepeatType is None, Daily, Weekly, or Monthly, StartTime must have a value and you need to set the start time.
  final pulumi.Input<int>? startTime;

  /// Creates a new [NatFirewallControlPolicyArgs].
  /// [aclAction] The method (action) of access traffic passing through Cloud Firewall in the security access control policy. Valid values:
  /// [applicationNameLists] The list of application types supported by the access control policy.
  /// [description] The description of the access control policy.
  /// [destPort] The destination port of traffic access in the access control policy. Value:
  /// [destPortGroup] The address book name of the destination port of the access traffic in the access control policy.
  /// [destPortType] The destination port type of the access traffic in the security access control policy.
  /// [destination] The destination address segment in the access control policy. Valid values:
  /// [destinationType] The destination address type in the access control policy. Valid values:
  /// [direction] The traffic direction of the access control policy. Valid values:
  /// [domainResolveType] The domain name resolution method of the access control policy. The policy is enabled by default after it is created. Valid values:
  /// [endTime] The end time of the policy validity period of the access control policy. Expresses using the second-level timestamp format. Must be full or half time and at least half an hour greater than the start time.
  /// [ipVersion] Supported IP address version. Value:
  /// [natGatewayId] The ID of the NAT gateway instance.
  /// [newOrder] The priority for the access control policy to take effect. The priority number increases sequentially from 1, and the smaller the priority number, the higher the priority.
  /// [proto] The security protocol type for traffic access in the access control policy. Valid values:
  /// [release] The enabled status of the access control policy. The policy is enabled by default after it is created. Value:
  /// [repeatDays] Collection of recurring dates for the policy validity period of the access control policy.
  /// [repeatEndTime] The recurring end time of the policy validity period of the access control policy. For example: 23:30, it must be the whole point or half point time, and at least half an hour greater than the repeat start time.
  /// [repeatStartTime] The recurring start time of the policy validity period of the access control policy. For example: 08:00, it must be the whole point or half point time, and at least half an hour less than the repeat end time.
  /// [repeatType] The type of repetition for the policy validity period of the access control policy. Value:
  /// [source] The source address in the access control policy. Valid values:
  /// [sourceType] The source address type in the access control policy. Valid values:
  /// [startTime] The start time of the policy validity period of the access control policy. Expresses using the second-level timestamp format. It must be a full or half hour and at least half an hour less than the end time.
  NatFirewallControlPolicyArgs({
    required this.aclAction,
    required this.applicationNameLists,
    required this.description,
    this.destPort,
    this.destPortGroup,
    this.destPortType,
    required this.destination,
    required this.destinationType,
    required this.direction,
    this.domainResolveType,
    this.endTime,
    this.ipVersion,
    required this.natGatewayId,
    required this.newOrder,
    required this.proto,
    this.release,
    this.repeatDays,
    this.repeatEndTime,
    this.repeatStartTime,
    this.repeatType,
    required this.source,
    required this.sourceType,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclAction': aclAction,
      'applicationNameLists': applicationNameLists,
      'description': description,
      'destPort': ?destPort,
      'destPortGroup': ?destPortGroup,
      'destPortType': ?destPortType,
      'destination': destination,
      'destinationType': destinationType,
      'direction': direction,
      'domainResolveType': ?domainResolveType,
      'endTime': ?endTime,
      'ipVersion': ?ipVersion,
      'natGatewayId': natGatewayId,
      'newOrder': newOrder,
      'proto': proto,
      'release': ?release,
      'repeatDays': ?repeatDays,
      'repeatEndTime': ?repeatEndTime,
      'repeatStartTime': ?repeatStartTime,
      'repeatType': ?repeatType,
      'source': source,
      'sourceType': sourceType,
      'startTime': ?startTime,
    };
  }

  factory NatFirewallControlPolicyArgs.fromMap(Map<String, dynamic> map) {
    return NatFirewallControlPolicyArgs(
      aclAction: pulumi.Input.fromValue(map['aclAction'] as String),
      applicationNameLists: pulumi.Input.fromValue(
        (map['applicationNameLists'] as List).cast<String>(),
      ),
      description: pulumi.Input.fromValue(map['description'] as String),
      destPort: (() {
        final guardedValue = map['destPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destPortGroup: (() {
        final guardedValue = map['destPortGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destPortType: (() {
        final guardedValue = map['destPortType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destination: pulumi.Input.fromValue(map['destination'] as String),
      destinationType: pulumi.Input.fromValue(map['destinationType'] as String),
      direction: pulumi.Input.fromValue(map['direction'] as String),
      domainResolveType: (() {
        final guardedValue = map['domainResolveType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      endTime: (() {
        final guardedValue = map['endTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      ipVersion: (() {
        final guardedValue = map['ipVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      natGatewayId: pulumi.Input.fromValue(map['natGatewayId'] as String),
      newOrder: pulumi.Input.fromValue(map['newOrder'] as String),
      proto: pulumi.Input.fromValue(map['proto'] as String),
      release: (() {
        final guardedValue = map['release'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repeatDays: (() {
        final guardedValue = map['repeatDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<int>());
      })(),
      repeatEndTime: (() {
        final guardedValue = map['repeatEndTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repeatStartTime: (() {
        final guardedValue = map['repeatStartTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repeatType: (() {
        final guardedValue = map['repeatType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      source: pulumi.Input.fromValue(map['source'] as String),
      sourceType: pulumi.Input.fromValue(map['sourceType'] as String),
      startTime: (() {
        final guardedValue = map['startTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
