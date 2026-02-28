// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAndroidAppConfig.
class GetAndroidAppConfigResult {
  final String appId;
  final String configFileContents;
  final String configFilename;
  final String id;
  final String? project;

  /// Creates a new [GetAndroidAppConfigResult].
  /// [appId] Required.
  /// [configFileContents] Required.
  /// [configFilename] Required.
  /// [id] Required.
  /// [project] Optional.
  GetAndroidAppConfigResult({
    required this.appId,
    required this.configFileContents,
    required this.configFilename,
    required this.id,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'configFileContents': configFileContents,
      'configFilename': configFilename,
      'id': id,
      'project': ?project,
    };
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

