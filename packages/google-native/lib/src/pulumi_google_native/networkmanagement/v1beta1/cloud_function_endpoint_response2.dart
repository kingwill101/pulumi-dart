// ignore_for_file: unused_element, unnecessary_cast

/// Wrapper for Cloud Function attributes.
class CloudFunctionEndpointResponse2 {
  /// A [Cloud Function](https://cloud.google.com/functions) name.
  final String uri;

  CloudFunctionEndpointResponse2({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['uri'] = uri;
    return map;
  }

  factory CloudFunctionEndpointResponse2.fromMap(Map<String, dynamic> map) {
    return CloudFunctionEndpointResponse2(
      uri: map['uri'] as String,
    );
  }
}
