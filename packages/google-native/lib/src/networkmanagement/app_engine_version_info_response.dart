// ignore_for_file: unused_element, unnecessary_cast

/// For display only. Metadata associated with an App Engine version.
class AppEngineVersionInfoResponse {
  /// Name of an App Engine version.
  final String displayName;

  /// App Engine execution environment for a version.
  final String environment;

  /// Runtime of the App Engine version.
  final String runtime;

  /// URI of an App Engine version.
  final String uri;

  /// Creates a new [AppEngineVersionInfoResponse].
  /// [displayName] Name of an App Engine version.
  /// [environment] App Engine execution environment for a version.
  /// [runtime] Runtime of the App Engine version.
  /// [uri] URI of an App Engine version.
  AppEngineVersionInfoResponse({
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

  factory AppEngineVersionInfoResponse.fromMap(Map<String, dynamic> map) {
    return AppEngineVersionInfoResponse(
      displayName: map['displayName'] as String,
      environment: map['environment'] as String,
      runtime: map['runtime'] as String,
      uri: map['uri'] as String,
    );
  }
}
