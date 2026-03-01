// ignore_for_file: unused_element, unnecessary_cast

/// Wrapper for the App Engine service version attributes.
class AppEngineVersionEndpoint {
  /// An [App Engine](https://cloud.google.com/appengine) [service version](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions) name.
  final String? uri;

  /// Creates a new [AppEngineVersionEndpoint].
  /// [uri] An [App Engine](https://cloud.google.com/appengine) [service version](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions) name.
  AppEngineVersionEndpoint({this.uri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'uri': ?uri};
  }

  factory AppEngineVersionEndpoint.fromMap(Map<String, dynamic> map) {
    return AppEngineVersionEndpoint(
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
