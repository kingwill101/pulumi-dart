// ignore_for_file: unused_element, unnecessary_cast

class GetQueueOutboundCallerConfig {
  /// Specifies the caller ID name.
  final String outboundCallerIdName;

  /// Specifies the caller ID number.
  final String outboundCallerIdNumberId;

  /// Outbound whisper flow to be used during an outbound call.
  final String outboundFlowId;

  GetQueueOutboundCallerConfig({
    required this.outboundCallerIdName,
    required this.outboundCallerIdNumberId,
    required this.outboundFlowId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['outboundCallerIdName'] = outboundCallerIdName;
    map['outboundCallerIdNumberId'] = outboundCallerIdNumberId;
    map['outboundFlowId'] = outboundFlowId;
    return map;
  }

  factory GetQueueOutboundCallerConfig.fromMap(Map<String, dynamic> map) {
    return GetQueueOutboundCallerConfig(
      outboundCallerIdName: map['outboundCallerIdName'] as String,
      outboundCallerIdNumberId: map['outboundCallerIdNumberId'] as String,
      outboundFlowId: map['outboundFlowId'] as String,
    );
  }
}
