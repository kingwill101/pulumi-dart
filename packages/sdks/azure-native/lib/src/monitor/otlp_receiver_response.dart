// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// OTLP Receiver.
class OtlpReceiverResponse {
  /// OTLP GRPC endpoint definition. Example: 0.0.0.0:&lt;port&gt;.
  final pulumi.Input<String> endpoint;

  /// Creates a new [OtlpReceiverResponse].
  /// [endpoint] OTLP GRPC endpoint definition. Example: 0.0.0.0:&lt;port&gt;.
  const OtlpReceiverResponse({
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
    };
  }

  factory OtlpReceiverResponse.fromMap(Map<String, dynamic> map) {
    return OtlpReceiverResponse(
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
    );
  }
}

