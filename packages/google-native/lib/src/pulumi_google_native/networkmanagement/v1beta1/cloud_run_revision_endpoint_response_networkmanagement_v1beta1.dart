// ignore_for_file: unused_element, unnecessary_cast

/// Wrapper for Cloud Run revision attributes.
class CloudRunRevisionEndpointResponseNetworkmanagementV1beta1 {
  /// A [Cloud Run](https://cloud.google.com/run) [revision](https://cloud.google.com/run/docs/reference/rest/v1/namespaces.revisions/get) URI. The format is: projects/{project}/locations/{location}/revisions/{revision}
  final String uri;

  CloudRunRevisionEndpointResponseNetworkmanagementV1beta1({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['uri'] = uri;
    return map;
  }

  factory CloudRunRevisionEndpointResponseNetworkmanagementV1beta1.fromMap(
      Map<String, dynamic> map) {
    return CloudRunRevisionEndpointResponseNetworkmanagementV1beta1(
      uri: map['uri'] as String,
    );
  }
}
