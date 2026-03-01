// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edas_slb_attachment_slb_attachment_args_doc}
/// The set of arguments for SlbAttachment.
/// {@endtemplate}
/// {@macro pulumi_edas_slb_attachment_slb_attachment_args_doc}
class SlbAttachmentArgs {
  /// The ID of the application to which you want to bind an SLB instance.
  final pulumi.Input<String> appId;
  /// The listening port for the bound SLB instance.
  final pulumi.Input<int>? listenerPort;
  /// The ID of the SLB instance that is going to be bound.
  final pulumi.Input<String> slbId;
  /// The IP address that is allocated to the bound SLB instance.
  final pulumi.Input<String> slbIp;
  /// The type of the bound SLB instance.
  final pulumi.Input<String> type;
  /// The ID of the virtual server (VServer) group associated with the intranet SLB instance.
  final pulumi.Input<String>? vserverGroupId;

  /// Creates a new [SlbAttachmentArgs].
  /// [appId] The ID of the application to which you want to bind an SLB instance.
  /// [listenerPort] The listening port for the bound SLB instance.
  /// [slbId] The ID of the SLB instance that is going to be bound.
  /// [slbIp] The IP address that is allocated to the bound SLB instance.
  /// [type] The type of the bound SLB instance.
  /// [vserverGroupId] The ID of the virtual server (VServer) group associated with the intranet SLB instance.
  SlbAttachmentArgs({
    required pulumi.Output<String> appId,
    pulumi.Output<int>? listenerPort,
    required pulumi.Output<String> slbId,
    required pulumi.Output<String> slbIp,
    required pulumi.Output<String> type,
    pulumi.Output<String>? vserverGroupId,
  }) :
      appId = pulumi.Input.asInput<String>(appId),
      listenerPort = pulumi.Input.asOptionalInput<int>(listenerPort),
      slbId = pulumi.Input.asInput<String>(slbId),
      slbIp = pulumi.Input.asInput<String>(slbIp),
      type = pulumi.Input.asInput<String>(type),
      vserverGroupId = pulumi.Input.asOptionalInput<String>(vserverGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'listenerPort': ?listenerPort,
      'slbId': slbId,
      'slbIp': slbIp,
      'type': type,
      'vserverGroupId': ?vserverGroupId,
    };
  }

  factory SlbAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return SlbAttachmentArgs(
      appId: pulumi.Output.create<String>(map['appId'] as String),
      listenerPort: map['listenerPort'] == null ? null : pulumi.Output.create<int>(map['listenerPort'] as int),
      slbId: pulumi.Output.create<String>(map['slbId'] as String),
      slbIp: pulumi.Output.create<String>(map['slbIp'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
      vserverGroupId: map['vserverGroupId'] == null ? null : pulumi.Output.create<String>(map['vserverGroupId'] as String),
    );
  }
}

