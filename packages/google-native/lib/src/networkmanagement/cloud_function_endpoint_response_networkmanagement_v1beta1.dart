// ignore_for_file: unused_element, unnecessary_cast

/// Wrapper for Cloud Function attributes.
class CloudFunctionEndpointResponseNetworkmanagementV1beta1 {
  /// A [Cloud Function](https://cloud.google.com/functions) name.
  final String uri;

  /// Creates a new [CloudFunctionEndpointResponseNetworkmanagementV1beta1].
  /// [uri] A [Cloud Function](https://cloud.google.com/functions) name.
  CloudFunctionEndpointResponseNetworkmanagementV1beta1({required this.uri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'uri': uri};
  }

  factory CloudFunctionEndpointResponseNetworkmanagementV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return CloudFunctionEndpointResponseNetworkmanagementV1beta1(
      uri: map['uri'] as String,
    );
  }
}
