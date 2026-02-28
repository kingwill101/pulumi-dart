// ignore_for_file: unused_element, unnecessary_cast


/// Wrapper for Cloud Run revision attributes.
class CloudRunRevisionEndpointResponseNetworkmanagementV1beta1 {
  /// A [Cloud Run](https://cloud.google.com/run) [revision](https://cloud.google.com/run/docs/reference/rest/v1/namespaces.revisions/get) URI. The format is: projects/{project}/locations/{location}/revisions/{revision}
  final String uri;

  /// Creates a new [CloudRunRevisionEndpointResponseNetworkmanagementV1beta1].
  /// [uri] A [Cloud Run](https://cloud.google.com/run) [revision](https://cloud.google.com/run/docs/reference/rest/v1/namespaces.revisions/get) URI. The format is: projects/{project}/locations/{location}/revisions/{revision}
  CloudRunRevisionEndpointResponseNetworkmanagementV1beta1({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': uri,
    };
  }

  factory CloudRunRevisionEndpointResponseNetworkmanagementV1beta1.fromMap(Map<String, dynamic> map) {
    return CloudRunRevisionEndpointResponseNetworkmanagementV1beta1(
      uri: map['uri'] as String,
    );
  }
}

