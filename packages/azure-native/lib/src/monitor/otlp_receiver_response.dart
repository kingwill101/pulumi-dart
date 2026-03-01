// ignore_for_file: unused_element, unnecessary_cast


/// OTLP Receiver.
class OtlpReceiverResponse {
  /// OTLP GRPC endpoint definition. Example: 0.0.0.0:<port>.
  final String endpoint;

  /// Creates a new [OtlpReceiverResponse].
  /// [endpoint] OTLP GRPC endpoint definition. Example: 0.0.0.0:<port>.
  OtlpReceiverResponse({
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
    };
  }

  factory OtlpReceiverResponse.fromMap(Map<String, dynamic> map) {
    return OtlpReceiverResponse(
      endpoint: map['endpoint'] as String,
    );
  }
}

