// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfirewall_control_policy_control_policy_args_doc}
/// The set of arguments for ControlPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudfirewall_control_policy_control_policy_args_doc}
class ControlPolicyArgs {
  /// The action that Cloud Firewall performs on the traffic. Valid values: `accept`, `drop`, `log`.
  final pulumi.Input<String> aclAction;
  /// The application type supported by the access control policy. Valid values: `ANY`, `HTTP`, `HTTPS`, `MQTT`, `Memcache`, `MongoDB`, `MySQL`, `RDP`, `Redis`, `SMTP`, `SMTPS`, `SSH`, `SSL`, `VNC`.
  /// > **NOTE:** If `proto` is set to `TCP`, you can set `application_name` to any valid value. If `proto` is set to `UDP`, `ICMP`, or `ANY`, you can only set `application_name` to `ANY`.
  final pulumi.Input<String>? applicationName;
  /// The application types supported by the access control policy.
  /// > **NOTE:** If `proto` is set to `TCP`, you can set `application_name_list` to any valid value. If `proto` is set to `UDP`, `ICMP`, or `ANY`, you can only set `application_name_list` to `["ANY"]`. From version 1.232.0, You must specify at least one of the `application_name_list` and `application_name`. If you specify both `application_name_list` and `application_name`, only the `application_name_list` takes effect.
  final pulumi.Input<List<String>>? applicationNameLists;
  /// The description of the access control policy.
  final pulumi.Input<String> description;
  /// The destination port in the access control policy. **Note:** If `dest_port_type` is set to `port`, you must specify `dest_port`.
  final pulumi.Input<String>? destPort;
  /// The name of the destination port address book in the access control policy. **Note:** If `dest_port_type` is set to `group`, you must specify `dest_port_group`.
  final pulumi.Input<String>? destPortGroup;
  /// The type of the destination port in the access control policy. Valid values: `port`, `group`.
  final pulumi.Input<String>? destPortType;
  /// The destination address in the access control policy.
  final pulumi.Input<String> destination;
  /// The type of the destination address in the access control policy. Valid values: `net`, `group`, `domain`, `location`.
  final pulumi.Input<String> destinationType;
  /// The direction of the traffic to which the access control policy applies. Valid values: `in`, `out`.
  final pulumi.Input<String> direction;
  /// The domain name resolution method of the access control policy. Valid values:
  /// - `FQDN`: Fully qualified domain name (FQDN)-based resolution.
  /// - `DNS`: DNS-based dynamic resolution.
  /// - `FQDN_AND_DNS`: FQDN and DNS-based dynamic resolution.
  final pulumi.Input<String>? domainResolveType;
  /// The time when the access control policy stops taking effect. The value is a UNIX timestamp. Unit: seconds. The value must be on the hour or on the half hour, and at least 30 minutes later than the start time.
  /// > **NOTE:** If `repeat_type` is set to `None`, `Daily`, `Weekly`, or `Monthly`, `start_time` and `end_time` must be set.
  final pulumi.Input<int>? endTime;
  /// The IP version supported by the access control policy. Default value: `4`. Valid values:
  final pulumi.Input<String>? ipVersion;
  /// The language of the content within the request and response. Valid values: `zh`, `en`.
  final pulumi.Input<String>? lang;
  /// The protocol type supported by the access control policy. Valid values: `ANY`, ` TCP`, `UDP`, `ICMP`.
  final pulumi.Input<String> proto;
  /// The status of the access control policy. Valid values: `true`, `false`.
  final pulumi.Input<String>? release;
  /// The days of a week or of a month on which the access control policy takes effect. Valid values:
  /// - If `repeat_type` is set to `Weekly`. Valid values: `0` to `6`.
  /// - If `repeat_type` is set to `Monthly`. Valid values: `1` to `31`.
  /// > **NOTE:** If `repeat_type` is set to `Weekly`, or `Monthly`, `repeat_days` must be set.
  final pulumi.Input<List<int>>? repeatDays;
  /// The point in time when the recurrence ends. Example: `23:30`. The end time must be on the hour or on the half hour, and at least 30 minutes later than the start time.
  /// > **NOTE:** If `repeat_type` is set to `Daily`, `Weekly`, or `Monthly`, `repeat_start_time` and `repeat_end_time` must be set.
  final pulumi.Input<String>? repeatEndTime;
  /// The point in time when the recurrence starts. Example: `08:00`. The start time must be on the hour or on the half hour, and at least 30 minutes earlier than the end time.
  final pulumi.Input<String>? repeatStartTime;
  /// The recurrence type for the access control policy to take effect. Default value: `Permanent`. Valid values:
  /// - `Permanent`: The policy always takes effect.
  /// - `None`: The policy takes effect for only once.
  /// - `Daily`: The policy takes effect on a daily basis.
  /// - `Weekly`: The policy takes effect on a weekly basis.
  /// - `Monthly`: The policy takes effect on a monthly basis.
  final pulumi.Input<String>? repeatType;
  /// The source address in the access control policy.
  final pulumi.Input<String> source;
  /// The source IP address of the request.
  final pulumi.Input<String>? sourceIp;
  /// The type of the source address in the access control policy. Valid values: `net`, `group`, `location`.
  final pulumi.Input<String> sourceType;
  /// The time when the access control policy starts to take effect. The value is a UNIX timestamp. Unit: seconds. The value must be on the hour or on the half hour, and at least 30 minutes earlier than the end time.
  final pulumi.Input<int>? startTime;

  /// Creates a new [ControlPolicyArgs].
  /// [aclAction] The action that Cloud Firewall performs on the traffic. Valid values: `accept`, `drop`, `log`.
  /// [applicationName] The application type supported by the access control policy. Valid values: `ANY`, `HTTP`, `HTTPS`, `MQTT`, `Memcache`, `MongoDB`, `MySQL`, `RDP`, `Redis`, `SMTP`, `SMTPS`, `SSH`, `SSL`, `VNC`.
  /// [applicationNameLists] The application types supported by the access control policy.
  /// [description] The description of the access control policy.
  /// [destPort] The destination port in the access control policy. **Note:** If `dest_port_type` is set to `port`, you must specify `dest_port`.
  /// [destPortGroup] The name of the destination port address book in the access control policy. **Note:** If `dest_port_type` is set to `group`, you must specify `dest_port_group`.
  /// [destPortType] The type of the destination port in the access control policy. Valid values: `port`, `group`.
  /// [destination] The destination address in the access control policy.
  /// [destinationType] The type of the destination address in the access control policy. Valid values: `net`, `group`, `domain`, `location`.
  /// [direction] The direction of the traffic to which the access control policy applies. Valid values: `in`, `out`.
  /// [domainResolveType] The domain name resolution method of the access control policy. Valid values:
  /// [endTime] The time when the access control policy stops taking effect. The value is a UNIX timestamp. Unit: seconds. The value must be on the hour or on the half hour, and at least 30 minutes later than the start time.
  /// [ipVersion] The IP version supported by the access control policy. Default value: `4`. Valid values:
  /// [lang] The language of the content within the request and response. Valid values: `zh`, `en`.
  /// [proto] The protocol type supported by the access control policy. Valid values: `ANY`, ` TCP`, `UDP`, `ICMP`.
  /// [release] The status of the access control policy. Valid values: `true`, `false`.
  /// [repeatDays] The days of a week or of a month on which the access control policy takes effect. Valid values:
  /// [repeatEndTime] The point in time when the recurrence ends. Example: `23:30`. The end time must be on the hour or on the half hour, and at least 30 minutes later than the start time.
  /// [repeatStartTime] The point in time when the recurrence starts. Example: `08:00`. The start time must be on the hour or on the half hour, and at least 30 minutes earlier than the end time.
  /// [repeatType] The recurrence type for the access control policy to take effect. Default value: `Permanent`. Valid values:
  /// [source] The source address in the access control policy.
  /// [sourceIp] The source IP address of the request.
  /// [sourceType] The type of the source address in the access control policy. Valid values: `net`, `group`, `location`.
  /// [startTime] The time when the access control policy starts to take effect. The value is a UNIX timestamp. Unit: seconds. The value must be on the hour or on the half hour, and at least 30 minutes earlier than the end time.
  ControlPolicyArgs({
    required this.aclAction,
    this.applicationName,
    this.applicationNameLists,
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
    this.lang,
    required this.proto,
    this.release,
    this.repeatDays,
    this.repeatEndTime,
    this.repeatStartTime,
    this.repeatType,
    required this.source,
    this.sourceIp,
    required this.sourceType,
    this.startTime,
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
      'direction': direction,
      'domainResolveType': ?domainResolveType,
      'endTime': ?endTime,
      'ipVersion': ?ipVersion,
      'lang': ?lang,
      'proto': proto,
      'release': ?release,
      'repeatDays': ?repeatDays,
      'repeatEndTime': ?repeatEndTime,
      'repeatStartTime': ?repeatStartTime,
      'repeatType': ?repeatType,
      'source': source,
      'sourceIp': ?sourceIp,
      'sourceType': sourceType,
      'startTime': ?startTime,
    };
  }

  factory ControlPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ControlPolicyArgs(
      aclAction: (map['aclAction'] as String).input(),
      applicationName: map['applicationName'] == null ? null : (map['applicationName']! as String).input(),
      applicationNameLists: map['applicationNameLists'] == null ? null : ((map['applicationNameLists']! as List).cast<String>()).input(),
      description: (map['description'] as String).input(),
      destPort: map['destPort'] == null ? null : (map['destPort']! as String).input(),
      destPortGroup: map['destPortGroup'] == null ? null : (map['destPortGroup']! as String).input(),
      destPortType: map['destPortType'] == null ? null : (map['destPortType']! as String).input(),
      destination: (map['destination'] as String).input(),
      destinationType: (map['destinationType'] as String).input(),
      direction: (map['direction'] as String).input(),
      domainResolveType: map['domainResolveType'] == null ? null : (map['domainResolveType']! as String).input(),
      endTime: map['endTime'] == null ? null : (map['endTime']! as int).input(),
      ipVersion: map['ipVersion'] == null ? null : (map['ipVersion']! as String).input(),
      lang: map['lang'] == null ? null : (map['lang']! as String).input(),
      proto: (map['proto'] as String).input(),
      release: map['release'] == null ? null : (map['release']! as String).input(),
      repeatDays: map['repeatDays'] == null ? null : ((map['repeatDays']! as List).cast<int>()).input(),
      repeatEndTime: map['repeatEndTime'] == null ? null : (map['repeatEndTime']! as String).input(),
      repeatStartTime: map['repeatStartTime'] == null ? null : (map['repeatStartTime']! as String).input(),
      repeatType: map['repeatType'] == null ? null : (map['repeatType']! as String).input(),
      source: (map['source'] as String).input(),
      sourceIp: map['sourceIp'] == null ? null : (map['sourceIp']! as String).input(),
      sourceType: (map['sourceType'] as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as int).input(),
    );
  }
}

