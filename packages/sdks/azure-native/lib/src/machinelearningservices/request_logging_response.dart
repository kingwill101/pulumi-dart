// ignore_for_file: unused_element, unnecessary_cast


class RequestLoggingResponse {
  /// For payload logging, we only collect payload by default. If customers also want to collect the specified headers, they can set them in captureHeaders so that backend will collect those headers along with payload.
  final List<String>? captureHeaders;

  /// Creates a new [RequestLoggingResponse].
  /// [captureHeaders] For payload logging, we only collect payload by default. If customers also want to collect the specified headers, they can set them in captureHeaders so that backend will collect those headers along with payload.
  RequestLoggingResponse({
    this.captureHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'captureHeaders': ?captureHeaders,
    };
  }

  factory RequestLoggingResponse.fromMap(Map<String, dynamic> map) {
    return RequestLoggingResponse(
      captureHeaders: map['captureHeaders'] == null ? null : (map['captureHeaders'] as List).cast<String>(),
    );
  }
}

