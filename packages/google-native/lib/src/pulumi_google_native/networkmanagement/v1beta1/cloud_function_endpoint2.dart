// ignore_for_file: unused_element, unnecessary_cast

/// Wrapper for Cloud Function attributes.
class CloudFunctionEndpoint2 {
  /// A [Cloud Function](https://cloud.google.com/functions) name.
  final String? uri;

  CloudFunctionEndpoint2({
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

  factory CloudFunctionEndpoint2.fromMap(Map<String, dynamic> map) {
    return CloudFunctionEndpoint2(
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
