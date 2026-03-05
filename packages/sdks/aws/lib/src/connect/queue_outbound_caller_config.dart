// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QueueOutboundCallerConfig {
  /// Specifies the caller ID name.
  final pulumi.Input<String>? outboundCallerIdName;
  /// Specifies the caller ID number.
  final pulumi.Input<String>? outboundCallerIdNumberId;
  /// Specifies outbound whisper flow to be used during an outbound call.
  final pulumi.Input<String>? outboundFlowId;

  /// Creates a new [QueueOutboundCallerConfig].
  /// [outboundCallerIdName] Specifies the caller ID name.
  /// [outboundCallerIdNumberId] Specifies the caller ID number.
  /// [outboundFlowId] Specifies outbound whisper flow to be used during an outbound call.
  QueueOutboundCallerConfig({
    this.outboundCallerIdName,
    this.outboundCallerIdNumberId,
    this.outboundFlowId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outboundCallerIdName': ?outboundCallerIdName,
      'outboundCallerIdNumberId': ?outboundCallerIdNumberId,
      'outboundFlowId': ?outboundFlowId,
    };
  }

  factory QueueOutboundCallerConfig.fromMap(Map<String, dynamic> map) {
    return QueueOutboundCallerConfig(
      outboundCallerIdName: (() { final guardedValue = map['outboundCallerIdName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outboundCallerIdNumberId: (() { final guardedValue = map['outboundCallerIdNumberId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outboundFlowId: (() { final guardedValue = map['outboundFlowId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

