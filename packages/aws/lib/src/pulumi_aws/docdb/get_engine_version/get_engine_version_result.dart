// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getEngineVersion.
class GetEngineVersionResult {
  final String? engine;

  /// Description of the database engine.
  final String engineDescription;

  /// Set of log types that the database engine has available for export to CloudWatch Logs.
  final List<String> exportableLogTypes;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String parameterGroupFamily;
  final List<String>? preferredVersions;
  final String region;

  /// Indicates whether the engine version supports exporting the log types specified by `exportable_log_types` to CloudWatch Logs.
  final bool supportsLogExportsToCloudwatch;

  /// A set of engine versions that this database engine version can be upgraded to.
  final List<String> validUpgradeTargets;
  final String version;

  /// Description of the database engine version.
  final String versionDescription;

  GetEngineVersionResult({
    this.engine,
    required this.engineDescription,
    required this.exportableLogTypes,
    required this.id,
    required this.parameterGroupFamily,
    this.preferredVersions,
    required this.region,
    required this.supportsLogExportsToCloudwatch,
    required this.validUpgradeTargets,
    required this.version,
    required this.versionDescription,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final engineValue = engine;
    if (engineValue != null) {
      map['engine'] = engineValue;
    }
    map['engineDescription'] = engineDescription;
    map['exportableLogTypes'] = exportableLogTypes;
    map['id'] = id;
    map['parameterGroupFamily'] = parameterGroupFamily;
    final preferredVersionsValue = preferredVersions;
    if (preferredVersionsValue != null) {
      map['preferredVersions'] = preferredVersionsValue;
    }
    map['region'] = region;
    map['supportsLogExportsToCloudwatch'] = supportsLogExportsToCloudwatch;
    map['validUpgradeTargets'] = validUpgradeTargets;
    map['version'] = version;
    map['versionDescription'] = versionDescription;
    return map;
  }

  factory GetEngineVersionResult.fromMap(Map<String, dynamic> map) {
    return GetEngineVersionResult(
      engine: map['engine'] == null ? null : map['engine'] as String,
      engineDescription: map['engineDescription'] as String,
      exportableLogTypes: (map['exportableLogTypes'] as List).cast<String>(),
      id: map['id'] as String,
      parameterGroupFamily: map['parameterGroupFamily'] as String,
      preferredVersions: map['preferredVersions'] == null
          ? null
          : (map['preferredVersions'] as List).cast<String>(),
      region: map['region'] as String,
      supportsLogExportsToCloudwatch:
          map['supportsLogExportsToCloudwatch'] as bool,
      validUpgradeTargets: (map['validUpgradeTargets'] as List).cast<String>(),
      version: map['version'] as String,
      versionDescription: map['versionDescription'] as String,
    );
  }
}
