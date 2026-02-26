// ignore_for_file: unused_element, unnecessary_cast

/// Wrapper for the App Engine service version attributes.
class AppEngineVersionEndpoint2 {
  /// An [App Engine](https://cloud.google.com/appengine) [service version](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions) name.
  final String? uri;

  AppEngineVersionEndpoint2({
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

  factory AppEngineVersionEndpoint2.fromMap(Map<String, dynamic> map) {
    return AppEngineVersionEndpoint2(
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
