// ignore_for_file: unused_element, unnecessary_cast

/// Wrapper for Cloud Run revision attributes.
class CloudRunRevisionEndpoint {
  /// A [Cloud Run](https://cloud.google.com/run) [revision](https://cloud.google.com/run/docs/reference/rest/v1/namespaces.revisions/get) URI. The format is: projects/{project}/locations/{location}/revisions/{revision}
  final String? uri;

  /// Creates a new [CloudRunRevisionEndpoint].
  /// [uri] A [Cloud Run](https://cloud.google.com/run) [revision](https://cloud.google.com/run/docs/reference/rest/v1/namespaces.revisions/get) URI. The format is: projects/{project}/locations/{location}/revisions/{revision}
  CloudRunRevisionEndpoint({
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

  factory CloudRunRevisionEndpoint.fromMap(Map<String, dynamic> map) {
    return CloudRunRevisionEndpoint(
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
