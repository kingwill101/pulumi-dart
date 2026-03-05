// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RequestLogging {
  /// For payload logging, we only collect payload by default. If customers also want to collect the specified headers, they can set them in captureHeaders so that backend will collect those headers along with payload.
  final pulumi.Input<List<String>>? captureHeaders;

  /// Creates a new [RequestLogging].
  /// [captureHeaders] For payload logging, we only collect payload by default. If customers also want to collect the specified headers, they can set them in captureHeaders so that backend will collect those headers along with payload.
  RequestLogging({
    this.captureHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'captureHeaders': ?captureHeaders,
    };
  }

  factory RequestLogging.fromMap(Map<String, dynamic> map) {
    return RequestLogging(
      captureHeaders: (() { final guardedValue = map['captureHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

