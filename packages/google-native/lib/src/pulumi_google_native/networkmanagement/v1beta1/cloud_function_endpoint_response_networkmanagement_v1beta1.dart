// ignore_for_file: unused_element, unnecessary_cast

/// Wrapper for Cloud Function attributes.
class CloudFunctionEndpointResponseNetworkmanagementV1beta1 {
  /// A [Cloud Function](https://cloud.google.com/functions) name.
  final String uri;

  CloudFunctionEndpointResponseNetworkmanagementV1beta1({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['uri'] = uri;
    return map;
  }

  factory CloudFunctionEndpointResponseNetworkmanagementV1beta1.fromMap(
      Map<String, dynamic> map) {
    return CloudFunctionEndpointResponseNetworkmanagementV1beta1(
      uri: map['uri'] as String,
    );
  }
}
