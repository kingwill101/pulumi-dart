// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetQueueOutboundCallerConfig {
  /// Specifies the caller ID name.
  final pulumi.Input<String> outboundCallerIdName;

  /// Specifies the caller ID number.
  final pulumi.Input<String> outboundCallerIdNumberId;

  /// Outbound whisper flow to be used during an outbound call.
  final pulumi.Input<String> outboundFlowId;

  /// Creates a new [GetQueueOutboundCallerConfig].
  /// [outboundCallerIdName] Specifies the caller ID name.
  /// [outboundCallerIdNumberId] Specifies the caller ID number.
  /// [outboundFlowId] Outbound whisper flow to be used during an outbound call.
  GetQueueOutboundCallerConfig({
    required this.outboundCallerIdName,
    required this.outboundCallerIdNumberId,
    required this.outboundFlowId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outboundCallerIdName': outboundCallerIdName,
      'outboundCallerIdNumberId': outboundCallerIdNumberId,
      'outboundFlowId': outboundFlowId,
    };
  }

  factory GetQueueOutboundCallerConfig.fromMap(Map<String, dynamic> map) {
    return GetQueueOutboundCallerConfig(
      outboundCallerIdName: pulumi.Input.fromValue(
        map['outboundCallerIdName'] as String,
      ),
      outboundCallerIdNumberId: pulumi.Input.fromValue(
        map['outboundCallerIdNumberId'] as String,
      ),
      outboundFlowId: pulumi.Input.fromValue(map['outboundFlowId'] as String),
    );
  }
}
