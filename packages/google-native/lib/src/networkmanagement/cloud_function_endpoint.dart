// ignore_for_file: unused_element, unnecessary_cast

/// Wrapper for Cloud Function attributes.
class CloudFunctionEndpoint {
  /// A [Cloud Function](https://cloud.google.com/functions) name.
  final String? uri;

  /// Creates a new [CloudFunctionEndpoint].
  /// [uri] A [Cloud Function](https://cloud.google.com/functions) name.
  CloudFunctionEndpoint({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    return map;
  }

  factory CloudFunctionEndpoint.fromMap(Map<String, dynamic> map) {
    return CloudFunctionEndpoint(
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
