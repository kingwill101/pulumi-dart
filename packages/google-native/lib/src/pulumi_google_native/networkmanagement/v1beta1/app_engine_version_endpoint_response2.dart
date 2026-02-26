// ignore_for_file: unused_element, unnecessary_cast

/// Wrapper for the App Engine service version attributes.
class AppEngineVersionEndpointResponse2 {
  /// An [App Engine](https://cloud.google.com/appengine) [service version](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions) name.
  final String uri;

  AppEngineVersionEndpointResponse2({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['uri'] = uri;
    return map;
  }

  factory AppEngineVersionEndpointResponse2.fromMap(Map<String, dynamic> map) {
    return AppEngineVersionEndpointResponse2(
      uri: map['uri'] as String,
    );
  }
}
