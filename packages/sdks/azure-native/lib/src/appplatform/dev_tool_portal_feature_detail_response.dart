// ignore_for_file: unused_element, unnecessary_cast


/// Detail settings for Dev Tool Portal feature
class DevToolPortalFeatureDetailResponse {
  /// Route path to visit the plugin
  final String route;
  /// State of the plugin
  final String? state;

  /// Creates a new [DevToolPortalFeatureDetailResponse].
  /// [route] Route path to visit the plugin
  /// [state] State of the plugin
  DevToolPortalFeatureDetailResponse({
    required this.route,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'route': route,
      'state': ?state,
    };
  }

  factory DevToolPortalFeatureDetailResponse.fromMap(Map<String, dynamic> map) {
    return DevToolPortalFeatureDetailResponse(
      route: map['route'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

