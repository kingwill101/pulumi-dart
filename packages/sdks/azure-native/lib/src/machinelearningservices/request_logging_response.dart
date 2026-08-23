// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RequestLoggingResponse {
  /// For payload logging, we only collect payload by default. If customers also want to collect the specified headers, they can set them in captureHeaders so that backend will collect those headers along with payload.
  final pulumi.Input<List<String>>? captureHeaders;

  /// Creates a new [RequestLoggingResponse].
  /// [captureHeaders] For payload logging, we only collect payload by default. If customers also want to collect the specified headers, they can set them in captureHeaders so that backend will collect those headers along with payload.
  const RequestLoggingResponse({
    this.captureHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'captureHeaders': ?captureHeaders,
    };
  }

  factory RequestLoggingResponse.fromMap(Map<String, dynamic> map) {
    return RequestLoggingResponse(
      captureHeaders: (() { final guardedValue = map['captureHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
