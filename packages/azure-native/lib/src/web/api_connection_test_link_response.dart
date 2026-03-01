// ignore_for_file: unused_element, unnecessary_cast


/// API connection properties
class ApiConnectionTestLinkResponse {
  /// HTTP Method
  final String? method;
  /// Test link request URI
  final String? requestUri;

  /// Creates a new [ApiConnectionTestLinkResponse].
  /// [method] HTTP Method
  /// [requestUri] Test link request URI
  ApiConnectionTestLinkResponse({
    this.method,
    this.requestUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': ?method,
      'requestUri': ?requestUri,
    };
  }

  factory ApiConnectionTestLinkResponse.fromMap(Map<String, dynamic> map) {
    return ApiConnectionTestLinkResponse(
      method: map['method'] == null ? null : map['method'] as String,
      requestUri: map['requestUri'] == null ? null : map['requestUri'] as String,
    );
  }
}

