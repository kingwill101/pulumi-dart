// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ControlPolicy resources.
class ControlPolicyState {
  /// The action that Cloud Firewall performs on the traffic. Valid values: `accept`, `drop`, `log`.
  final pulumi.Input<String>? aclAction;
  /// (Available since v1.148.0) The unique ID of the access control policy.
  final pulumi.Input<String>? aclUuid;
  /// The application type supported by the access control policy. Valid values: `ANY`, `HTTP`, `HTTPS`, `MQTT`, `Memcache`, `MongoDB`, `MySQL`, `RDP`, `Redis`, `SMTP`, `SMTPS`, `SSH`, `SSL`, `VNC`.
  /// > **NOTE:** If `proto` is set to `TCP`, you can set `application_name` to any valid value. If `proto` is set to `UDP`, `ICMP`, or `ANY`, you can only set `application_name` to `ANY`.
  final pulumi.Input<String>? applicationName;
  /// The application types supported by the access control policy.
  /// > **NOTE:** If `proto` is set to `TCP`, you can set `application_name_list` to any valid value. If `proto` is set to `UDP`, `ICMP`, or `ANY`, you can only set `application_name_list` to `["ANY"]`. From version 1.232.0, You must specify at least one of the `application_name_list` and `application_name`. If you specify both `application_name_list` and `application_name`, only the `application_name_list` takes effect.
  final pulumi.Input<List<String>>? applicationNameLists;
  /// (Available since v1.232.0) The time when the access control policy was created.
  final pulumi.Input<String>? createTime;
  /// The description of the access control policy.
  final pulumi.Input<String>? description;
  /// The destination port in the access control policy. **Note:** If `dest_port_type` is set to `port`, you must specify `dest_port`.
  final pulumi.Input<String>? destPort;
  /// The name of the destination port address book in the access control policy. **Note:** If `dest_port_type` is set to `group`, you must specify `dest_port_group`.
  final pulumi.Input<String>? destPortGroup;
  /// The type of the destination port in the access control policy. Valid values: `port`, `group`.
  final pulumi.Input<String>? destPortType;
  /// The destination address in the access control policy.
  final pulumi.Input<String>? destination;
  /// The type of the destination address in the access control policy. Valid values: `net`, `group`, `domain`, `location`.
  final pulumi.Input<String>? destinationType;
  /// The direction of the traffic to which the access control policy applies. Valid values: `in`, `out`.
  final pulumi.Input<String>? direction;
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
  final pulumi.Input<String>? proto;
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
  final pulumi.Input<String>? source;
  /// The source IP address of the request.
  final pulumi.Input<String>? sourceIp;
  /// The type of the source address in the access control policy. Valid values: `net`, `group`, `location`.
  final pulumi.Input<String>? sourceType;
  /// The time when the access control policy starts to take effect. The value is a UNIX timestamp. Unit: seconds. The value must be on the hour or on the half hour, and at least 30 minutes earlier than the end time.
  final pulumi.Input<int>? startTime;

  /// Creates a new [ControlPolicyState].
  /// [aclAction] The action that Cloud Firewall performs on the traffic. Valid values: `accept`, `drop`, `log`.
  /// [aclUuid] (Available since v1.148.0) The unique ID of the access control policy.
  /// [applicationName] The application type supported by the access control policy. Valid values: `ANY`, `HTTP`, `HTTPS`, `MQTT`, `Memcache`, `MongoDB`, `MySQL`, `RDP`, `Redis`, `SMTP`, `SMTPS`, `SSH`, `SSL`, `VNC`.
  /// [applicationNameLists] The application types supported by the access control policy.
  /// [createTime] (Available since v1.232.0) The time when the access control policy was created.
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
  ControlPolicyState({
    pulumi.Output<String>? aclAction,
    pulumi.Output<String>? aclUuid,
    pulumi.Output<String>? applicationName,
    pulumi.Output<List<String>>? applicationNameLists,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? destPort,
    pulumi.Output<String>? destPortGroup,
    pulumi.Output<String>? destPortType,
    pulumi.Output<String>? destination,
    pulumi.Output<String>? destinationType,
    pulumi.Output<String>? direction,
    pulumi.Output<String>? domainResolveType,
    pulumi.Output<int>? endTime,
    pulumi.Output<String>? ipVersion,
    pulumi.Output<String>? lang,
    pulumi.Output<String>? proto,
    pulumi.Output<String>? release,
    pulumi.Output<List<int>>? repeatDays,
    pulumi.Output<String>? repeatEndTime,
    pulumi.Output<String>? repeatStartTime,
    pulumi.Output<String>? repeatType,
    pulumi.Output<String>? source,
    pulumi.Output<String>? sourceIp,
    pulumi.Output<String>? sourceType,
    pulumi.Output<int>? startTime,
  }) :
      aclAction = pulumi.Input.asOptionalInput<String>(aclAction),
      aclUuid = pulumi.Input.asOptionalInput<String>(aclUuid),
      applicationName = pulumi.Input.asOptionalInput<String>(applicationName),
      applicationNameLists = pulumi.Input.asOptionalInput<List<String>>(applicationNameLists),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      destPort = pulumi.Input.asOptionalInput<String>(destPort),
      destPortGroup = pulumi.Input.asOptionalInput<String>(destPortGroup),
      destPortType = pulumi.Input.asOptionalInput<String>(destPortType),
      destination = pulumi.Input.asOptionalInput<String>(destination),
      destinationType = pulumi.Input.asOptionalInput<String>(destinationType),
      direction = pulumi.Input.asOptionalInput<String>(direction),
      domainResolveType = pulumi.Input.asOptionalInput<String>(domainResolveType),
      endTime = pulumi.Input.asOptionalInput<int>(endTime),
      ipVersion = pulumi.Input.asOptionalInput<String>(ipVersion),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      proto = pulumi.Input.asOptionalInput<String>(proto),
      release = pulumi.Input.asOptionalInput<String>(release),
      repeatDays = pulumi.Input.asOptionalInput<List<int>>(repeatDays),
      repeatEndTime = pulumi.Input.asOptionalInput<String>(repeatEndTime),
      repeatStartTime = pulumi.Input.asOptionalInput<String>(repeatStartTime),
      repeatType = pulumi.Input.asOptionalInput<String>(repeatType),
      source = pulumi.Input.asOptionalInput<String>(source),
      sourceIp = pulumi.Input.asOptionalInput<String>(sourceIp),
      sourceType = pulumi.Input.asOptionalInput<String>(sourceType),
      startTime = pulumi.Input.asOptionalInput<int>(startTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclAction': ?aclAction,
      'aclUuid': ?aclUuid,
      'applicationName': ?applicationName,
      'applicationNameLists': ?applicationNameLists,
      'createTime': ?createTime,
      'description': ?description,
      'destPort': ?destPort,
      'destPortGroup': ?destPortGroup,
      'destPortType': ?destPortType,
      'destination': ?destination,
      'destinationType': ?destinationType,
      'direction': ?direction,
      'domainResolveType': ?domainResolveType,
      'endTime': ?endTime,
      'ipVersion': ?ipVersion,
      'lang': ?lang,
      'proto': ?proto,
      'release': ?release,
      'repeatDays': ?repeatDays,
      'repeatEndTime': ?repeatEndTime,
      'repeatStartTime': ?repeatStartTime,
      'repeatType': ?repeatType,
      'source': ?source,
      'sourceIp': ?sourceIp,
      'sourceType': ?sourceType,
      'startTime': ?startTime,
    };
  }

  factory ControlPolicyState.fromMap(Map<String, dynamic> map) {
    return ControlPolicyState(
      aclAction: map['aclAction'] == null ? null : pulumi.Output.create<String>(map['aclAction'] as String),
      aclUuid: map['aclUuid'] == null ? null : pulumi.Output.create<String>(map['aclUuid'] as String),
      applicationName: map['applicationName'] == null ? null : pulumi.Output.create<String>(map['applicationName'] as String),
      applicationNameLists: map['applicationNameLists'] == null ? null : pulumi.Output.create<List<String>>((map['applicationNameLists'] as List).cast<String>()),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destPort: map['destPort'] == null ? null : pulumi.Output.create<String>(map['destPort'] as String),
      destPortGroup: map['destPortGroup'] == null ? null : pulumi.Output.create<String>(map['destPortGroup'] as String),
      destPortType: map['destPortType'] == null ? null : pulumi.Output.create<String>(map['destPortType'] as String),
      destination: map['destination'] == null ? null : pulumi.Output.create<String>(map['destination'] as String),
      destinationType: map['destinationType'] == null ? null : pulumi.Output.create<String>(map['destinationType'] as String),
      direction: map['direction'] == null ? null : pulumi.Output.create<String>(map['direction'] as String),
      domainResolveType: map['domainResolveType'] == null ? null : pulumi.Output.create<String>(map['domainResolveType'] as String),
      endTime: map['endTime'] == null ? null : pulumi.Output.create<int>(map['endTime'] as int),
      ipVersion: map['ipVersion'] == null ? null : pulumi.Output.create<String>(map['ipVersion'] as String),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      proto: map['proto'] == null ? null : pulumi.Output.create<String>(map['proto'] as String),
      release: map['release'] == null ? null : pulumi.Output.create<String>(map['release'] as String),
      repeatDays: map['repeatDays'] == null ? null : pulumi.Output.create<List<int>>((map['repeatDays'] as List).cast<int>()),
      repeatEndTime: map['repeatEndTime'] == null ? null : pulumi.Output.create<String>(map['repeatEndTime'] as String),
      repeatStartTime: map['repeatStartTime'] == null ? null : pulumi.Output.create<String>(map['repeatStartTime'] as String),
      repeatType: map['repeatType'] == null ? null : pulumi.Output.create<String>(map['repeatType'] as String),
      source: map['source'] == null ? null : pulumi.Output.create<String>(map['source'] as String),
      sourceIp: map['sourceIp'] == null ? null : pulumi.Output.create<String>(map['sourceIp'] as String),
      sourceType: map['sourceType'] == null ? null : pulumi.Output.create<String>(map['sourceType'] as String),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<int>(map['startTime'] as int),
    );
  }
}

