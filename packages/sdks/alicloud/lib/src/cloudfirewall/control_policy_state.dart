// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ControlPolicy resources.
class ControlPolicyState {
  /// The action that Cloud Firewall performs on the traffic. Valid values: `accept`, `drop`, `log`.
  final pulumi.Input<String>? aclAction;
  /// (Available since v1.148.0) The unique ID of the access control policy.
  final pulumi.Input<String>? aclUuid;
  /// The application type supported by the access control policy. Valid values: `ANY`, `HTTP`, `HTTPS`, `MQTT`, `Memcache`, `MongoDB`, `MySQL`, `RDP`, `Redis`, `SMTP`, `SMTPS`, `SSH`, `SSL`, `VNC`.
  /// &gt; **NOTE:** If `proto` is set to `TCP`, you can set `application_name` to any valid value. If `proto` is set to `UDP`, `ICMP`, or `ANY`, you can only set `application_name` to `ANY`.
  final pulumi.Input<String>? applicationName;
  /// The application types supported by the access control policy.
  /// &gt; **NOTE:** If `proto` is set to `TCP`, you can set `application_name_list` to any valid value. If `proto` is set to `UDP`, `ICMP`, or `ANY`, you can only set `application_name_list` to `["ANY"]`. From version 1.232.0, You must specify at least one of the `application_name_list` and `application_name`. If you specify both `application_name_list` and `application_name`, only the `application_name_list` takes effect.
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
  /// &gt; **NOTE:** If `repeat_type` is set to `None`, `Daily`, `Weekly`, or `Monthly`, `start_time` and `end_time` must be set.
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
  /// &gt; **NOTE:** If `repeat_type` is set to `Weekly`, or `Monthly`, `repeat_days` must be set.
  final pulumi.Input<List<int>>? repeatDays;
  /// The point in time when the recurrence ends. Example: `23:30`. The end time must be on the hour or on the half hour, and at least 30 minutes later than the start time.
  /// &gt; **NOTE:** If `repeat_type` is set to `Daily`, `Weekly`, or `Monthly`, `repeat_start_time` and `repeat_end_time` must be set.
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
    this.aclAction,
    this.aclUuid,
    this.applicationName,
    this.applicationNameLists,
    this.createTime,
    this.description,
    this.destPort,
    this.destPortGroup,
    this.destPortType,
    this.destination,
    this.destinationType,
    this.direction,
    this.domainResolveType,
    this.endTime,
    this.ipVersion,
    this.lang,
    this.proto,
    this.release,
    this.repeatDays,
    this.repeatEndTime,
    this.repeatStartTime,
    this.repeatType,
    this.source,
    this.sourceIp,
    this.sourceType,
    this.startTime,
  });

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
      aclAction: (() { final guardedValue = map['aclAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aclUuid: (() { final guardedValue = map['aclUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationName: (() { final guardedValue = map['applicationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationNameLists: (() { final guardedValue = map['applicationNameLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destPort: (() { final guardedValue = map['destPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destPortGroup: (() { final guardedValue = map['destPortGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destPortType: (() { final guardedValue = map['destPortType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationType: (() { final guardedValue = map['destinationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainResolveType: (() { final guardedValue = map['domainResolveType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ipVersion: (() { final guardedValue = map['ipVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proto: (() { final guardedValue = map['proto']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      release: (() { final guardedValue = map['release']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repeatDays: (() { final guardedValue = map['repeatDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      repeatEndTime: (() { final guardedValue = map['repeatEndTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repeatStartTime: (() { final guardedValue = map['repeatStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repeatType: (() { final guardedValue = map['repeatType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceIp: (() { final guardedValue = map['sourceIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

