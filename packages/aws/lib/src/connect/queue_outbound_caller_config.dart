// ignore_for_file: unused_element, unnecessary_cast

class QueueOutboundCallerConfig {
  /// Specifies the caller ID name.
  final String? outboundCallerIdName;

  /// Specifies the caller ID number.
  final String? outboundCallerIdNumberId;

  /// Specifies outbound whisper flow to be used during an outbound call.
  final String? outboundFlowId;

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
      outboundCallerIdName: map['outboundCallerIdName'] == null
          ? null
          : map['outboundCallerIdName'] as String,
      outboundCallerIdNumberId: map['outboundCallerIdNumberId'] == null
          ? null
          : map['outboundCallerIdNumberId'] as String,
      outboundFlowId: map['outboundFlowId'] == null
          ? null
          : map['outboundFlowId'] as String,
    );
  }
}
