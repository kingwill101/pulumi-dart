// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SlbAttachment resources.
class SlbAttachmentState {
  /// The ID of the application to which you want to bind an SLB instance.
  final pulumi.Input<String>? appId;

  /// The listening port for the bound SLB instance.
  final pulumi.Input<int>? listenerPort;

  /// The ID of the SLB instance that is going to be bound.
  final pulumi.Input<String>? slbId;

  /// The IP address that is allocated to the bound SLB instance.
  final pulumi.Input<String>? slbIp;

  /// Running Status of SLB instance. Inactive：The instance is stopped, and listener will not monitor and forward traffic. Active：The instance is running. After the instance is created, the default state is active. Locked：The instance is locked, the instance has been owed or locked by Alibaba Cloud. Expired: The instance has expired.
  final pulumi.Input<String>? slbStatus;

  /// The type of the bound SLB instance.
  final pulumi.Input<String>? type;

  /// The ID of the virtual server (VServer) group associated with the intranet SLB instance.
  final pulumi.Input<String>? vserverGroupId;

  /// VPC related vswitch ID.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [SlbAttachmentState].
  /// [appId] The ID of the application to which you want to bind an SLB instance.
  /// [listenerPort] The listening port for the bound SLB instance.
  /// [slbId] The ID of the SLB instance that is going to be bound.
  /// [slbIp] The IP address that is allocated to the bound SLB instance.
  /// [slbStatus] Running Status of SLB instance. Inactive：The instance is stopped, and listener will not monitor and forward traffic. Active：The instance is running. After the instance is created, the default state is active. Locked：The instance is locked, the instance has been owed or locked by Alibaba Cloud. Expired: The instance has expired.
  /// [type] The type of the bound SLB instance.
  /// [vserverGroupId] The ID of the virtual server (VServer) group associated with the intranet SLB instance.
  /// [vswitchId] VPC related vswitch ID.
  SlbAttachmentState({
    this.appId,
    this.listenerPort,
    this.slbId,
    this.slbIp,
    this.slbStatus,
    this.type,
    this.vserverGroupId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'listenerPort': ?listenerPort,
      'slbId': ?slbId,
      'slbIp': ?slbIp,
      'slbStatus': ?slbStatus,
      'type': ?type,
      'vserverGroupId': ?vserverGroupId,
      'vswitchId': ?vswitchId,
    };
  }

  factory SlbAttachmentState.fromMap(Map<String, dynamic> map) {
    return SlbAttachmentState(
      appId: (() {
        final guardedValue = map['appId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      listenerPort: (() {
        final guardedValue = map['listenerPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      slbId: (() {
        final guardedValue = map['slbId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      slbIp: (() {
        final guardedValue = map['slbIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      slbStatus: (() {
        final guardedValue = map['slbStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vserverGroupId: (() {
        final guardedValue = map['vserverGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
