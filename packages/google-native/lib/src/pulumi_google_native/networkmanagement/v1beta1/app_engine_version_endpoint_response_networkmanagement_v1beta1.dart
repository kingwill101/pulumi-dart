// ignore_for_file: unused_element, unnecessary_cast

/// Wrapper for the App Engine service version attributes.
class AppEngineVersionEndpointResponseNetworkmanagementV1beta1 {
  /// An [App Engine](https://cloud.google.com/appengine) [service version](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions) name.
  final String uri;

  AppEngineVersionEndpointResponseNetworkmanagementV1beta1({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['uri'] = uri;
    return map;
  }

  factory AppEngineVersionEndpointResponseNetworkmanagementV1beta1.fromMap(
      Map<String, dynamic> map) {
    return AppEngineVersionEndpointResponseNetworkmanagementV1beta1(
      uri: map['uri'] as String,
    );
  }
}
