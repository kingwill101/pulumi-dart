// ignore_for_file: unused_element, unnecessary_cast

/// Wrapper for Cloud Function attributes.
class CloudFunctionEndpointResponse {
  /// A [Cloud Function](https://cloud.google.com/functions) name.
  final String uri;

  CloudFunctionEndpointResponse({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['uri'] = uri;
    return map;
  }

  factory CloudFunctionEndpointResponse.fromMap(Map<String, dynamic> map) {
    return CloudFunctionEndpointResponse(
      uri: map['uri'] as String,
    );
  }
}
