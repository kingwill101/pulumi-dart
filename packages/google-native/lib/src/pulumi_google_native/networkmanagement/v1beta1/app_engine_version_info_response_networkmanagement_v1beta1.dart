// ignore_for_file: unused_element, unnecessary_cast

/// For display only. Metadata associated with an App Engine version.
class AppEngineVersionInfoResponseNetworkmanagementV1beta1 {
  /// Name of an App Engine version.
  final String displayName;

  /// App Engine execution environment for a version.
  final String environment;

  /// Runtime of the App Engine version.
  final String runtime;

  /// URI of an App Engine version.
  final String uri;

  AppEngineVersionInfoResponseNetworkmanagementV1beta1({
    required this.displayName,
    required this.environment,
    required this.runtime,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['environment'] = environment;
    map['runtime'] = runtime;
    map['uri'] = uri;
    return map;
  }

  factory AppEngineVersionInfoResponseNetworkmanagementV1beta1.fromMap(
      Map<String, dynamic> map) {
    return AppEngineVersionInfoResponseNetworkmanagementV1beta1(
      displayName: map['displayName'] as String,
      environment: map['environment'] as String,
      runtime: map['runtime'] as String,
      uri: map['uri'] as String,
    );
  }
}
