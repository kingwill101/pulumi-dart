// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// OTLP Receiver.
class OtlpReceiver {
  /// OTLP GRPC endpoint definition. Example: 0.0.0.0:&lt;port&gt;.
  final pulumi.Input<String> endpoint;

  /// Creates a new [OtlpReceiver].
  /// [endpoint] OTLP GRPC endpoint definition. Example: 0.0.0.0:&lt;port&gt;.
  const OtlpReceiver({
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
    };
  }

  factory OtlpReceiver.fromMap(Map<String, dynamic> map) {
    return OtlpReceiver(
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
    );
  }
}
