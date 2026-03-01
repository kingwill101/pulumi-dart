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
    pulumi.Output<String>? appId,
    pulumi.Output<int>? listenerPort,
    pulumi.Output<String>? slbId,
    pulumi.Output<String>? slbIp,
    pulumi.Output<String>? slbStatus,
    pulumi.Output<String>? type,
    pulumi.Output<String>? vserverGroupId,
    pulumi.Output<String>? vswitchId,
  }) :
      appId = pulumi.Input.asOptionalInput<String>(appId),
      listenerPort = pulumi.Input.asOptionalInput<int>(listenerPort),
      slbId = pulumi.Input.asOptionalInput<String>(slbId),
      slbIp = pulumi.Input.asOptionalInput<String>(slbIp),
      slbStatus = pulumi.Input.asOptionalInput<String>(slbStatus),
      type = pulumi.Input.asOptionalInput<String>(type),
      vserverGroupId = pulumi.Input.asOptionalInput<String>(vserverGroupId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

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
      appId: map['appId'] == null ? null : pulumi.Output.create<String>(map['appId'] as String),
      listenerPort: map['listenerPort'] == null ? null : pulumi.Output.create<int>(map['listenerPort'] as int),
      slbId: map['slbId'] == null ? null : pulumi.Output.create<String>(map['slbId'] as String),
      slbIp: map['slbIp'] == null ? null : pulumi.Output.create<String>(map['slbIp'] as String),
      slbStatus: map['slbStatus'] == null ? null : pulumi.Output.create<String>(map['slbStatus'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      vserverGroupId: map['vserverGroupId'] == null ? null : pulumi.Output.create<String>(map['vserverGroupId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

