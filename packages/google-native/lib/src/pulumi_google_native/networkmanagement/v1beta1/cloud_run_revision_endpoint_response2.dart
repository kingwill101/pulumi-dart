// ignore_for_file: unused_element, unnecessary_cast

/// Wrapper for Cloud Run revision attributes.
class CloudRunRevisionEndpointResponse2 {
  /// A [Cloud Run](https://cloud.google.com/run) [revision](https://cloud.google.com/run/docs/reference/rest/v1/namespaces.revisions/get) URI. The format is: projects/{project}/locations/{location}/revisions/{revision}
  final String uri;

  CloudRunRevisionEndpointResponse2({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['uri'] = uri;
    return map;
  }

  factory CloudRunRevisionEndpointResponse2.fromMap(Map<String, dynamic> map) {
    return CloudRunRevisionEndpointResponse2(
      uri: map['uri'] as String,
    );
  }
}
