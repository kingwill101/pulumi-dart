// ignore_for_file: unused_element, unnecessary_cast


/// OTLP Receiver.
class OtlpReceiver {
  /// OTLP GRPC endpoint definition. Example: 0.0.0.0:<port>.
  final String endpoint;

  /// Creates a new [OtlpReceiver].
  /// [endpoint] OTLP GRPC endpoint definition. Example: 0.0.0.0:<port>.
  OtlpReceiver({
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
    };
  }

  factory OtlpReceiver.fromMap(Map<String, dynamic> map) {
    return OtlpReceiver(
      endpoint: map['endpoint'] as String,
    );
  }
}

