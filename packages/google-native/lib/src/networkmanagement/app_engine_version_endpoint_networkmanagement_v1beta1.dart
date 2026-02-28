// ignore_for_file: unused_element, unnecessary_cast


/// Wrapper for the App Engine service version attributes.
class AppEngineVersionEndpointNetworkmanagementV1beta1 {
  /// An [App Engine](https://cloud.google.com/appengine) [service version](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions) name.
  final String? uri;

  /// Creates a new [AppEngineVersionEndpointNetworkmanagementV1beta1].
  /// [uri] An [App Engine](https://cloud.google.com/appengine) [service version](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions) name.
  AppEngineVersionEndpointNetworkmanagementV1beta1({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': ?uri,
    };
  }

  factory AppEngineVersionEndpointNetworkmanagementV1beta1.fromMap(Map<String, dynamic> map) {
    return AppEngineVersionEndpointNetworkmanagementV1beta1(
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

