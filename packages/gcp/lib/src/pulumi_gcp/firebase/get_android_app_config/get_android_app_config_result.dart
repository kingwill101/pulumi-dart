// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAndroidAppConfig.
class GetAndroidAppConfigResult {
  final String appId;
  final String configFileContents;
  final String configFilename;
  final String id;
  final String? project;

  GetAndroidAppConfigResult({
    required this.appId,
    required this.configFileContents,
    required this.configFilename,
    required this.id,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    map['configFileContents'] = configFileContents;
    map['configFilename'] = configFilename;
    map['id'] = id;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAndroidAppConfigResult.fromMap(Map<String, dynamic> map) {
    return GetAndroidAppConfigResult(
      appId: map['appId'] as String,
      configFileContents: map['configFileContents'] as String,
      configFilename: map['configFilename'] as String,
      id: map['id'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
