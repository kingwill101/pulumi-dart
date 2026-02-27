// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getEngineVersion.
class GetEngineVersionNeptuneResult {
  /// Default character set for the engine version.
  final String defaultCharacterSet;
  final bool? defaultOnly;
  final String? engine;

  /// Description of the database engine.
  final String engineDescription;

  /// Set of log types that the database engine has available for export to CloudWatch Logs.
  final List<String> exportableLogTypes;
  final bool? hasMajorTarget;
  final bool? hasMinorTarget;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? latest;
  final String parameterGroupFamily;
  final List<String>? preferredMajorTargets;
  final List<String>? preferredUpgradeTargets;
  final List<String>? preferredVersions;
  final String region;

  /// Set of character sets supported by this engine version.
  final List<String> supportedCharacterSets;

  /// Set of time zones supported by this engine.
  final List<String> supportedTimezones;

  /// Whether the engine version supports global databases.
  final bool supportsGlobalDatabases;

  /// Whether the engine version supports exporting the log types specified by `exportable_log_types` to CloudWatch Logs.
  final bool supportsLogExportsToCloudwatch;

  /// Whether the database engine version supports read replicas.
  final bool supportsReadReplica;

  /// Set of valid major engine versions that this version can be upgraded to.
  final List<String> validMajorTargets;

  /// Set of valid minor engine versions that this version can be upgraded to.
  final List<String> validMinorTargets;

  /// Set of engine versions that this database engine version can be upgraded to.
  final List<String> validUpgradeTargets;
  final String version;

  /// Actual engine version returned by the API.
  final String versionActual;

  /// Description of the database engine version.
  final String versionDescription;

  GetEngineVersionNeptuneResult({
    required this.defaultCharacterSet,
    this.defaultOnly,
    this.engine,
    required this.engineDescription,
    required this.exportableLogTypes,
    this.hasMajorTarget,
    this.hasMinorTarget,
    required this.id,
    this.latest,
    required this.parameterGroupFamily,
    this.preferredMajorTargets,
    this.preferredUpgradeTargets,
    this.preferredVersions,
    required this.region,
    required this.supportedCharacterSets,
    required this.supportedTimezones,
    required this.supportsGlobalDatabases,
    required this.supportsLogExportsToCloudwatch,
    required this.supportsReadReplica,
    required this.validMajorTargets,
    required this.validMinorTargets,
    required this.validUpgradeTargets,
    required this.version,
    required this.versionActual,
    required this.versionDescription,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultCharacterSet'] = defaultCharacterSet;
    final defaultOnlyValue = defaultOnly;
    if (defaultOnlyValue != null) {
      map['defaultOnly'] = defaultOnlyValue;
    }
    final engineValue = engine;
    if (engineValue != null) {
      map['engine'] = engineValue;
    }
    map['engineDescription'] = engineDescription;
    map['exportableLogTypes'] = exportableLogTypes;
    final hasMajorTargetValue = hasMajorTarget;
    if (hasMajorTargetValue != null) {
      map['hasMajorTarget'] = hasMajorTargetValue;
    }
    final hasMinorTargetValue = hasMinorTarget;
    if (hasMinorTargetValue != null) {
      map['hasMinorTarget'] = hasMinorTargetValue;
    }
    map['id'] = id;
    final latestValue = latest;
    if (latestValue != null) {
      map['latest'] = latestValue;
    }
    map['parameterGroupFamily'] = parameterGroupFamily;
    final preferredMajorTargetsValue = preferredMajorTargets;
    if (preferredMajorTargetsValue != null) {
      map['preferredMajorTargets'] = preferredMajorTargetsValue;
    }
    final preferredUpgradeTargetsValue = preferredUpgradeTargets;
    if (preferredUpgradeTargetsValue != null) {
      map['preferredUpgradeTargets'] = preferredUpgradeTargetsValue;
    }
    final preferredVersionsValue = preferredVersions;
    if (preferredVersionsValue != null) {
      map['preferredVersions'] = preferredVersionsValue;
    }
    map['region'] = region;
    map['supportedCharacterSets'] = supportedCharacterSets;
    map['supportedTimezones'] = supportedTimezones;
    map['supportsGlobalDatabases'] = supportsGlobalDatabases;
    map['supportsLogExportsToCloudwatch'] = supportsLogExportsToCloudwatch;
    map['supportsReadReplica'] = supportsReadReplica;
    map['validMajorTargets'] = validMajorTargets;
    map['validMinorTargets'] = validMinorTargets;
    map['validUpgradeTargets'] = validUpgradeTargets;
    map['version'] = version;
    map['versionActual'] = versionActual;
    map['versionDescription'] = versionDescription;
    return map;
  }

  factory GetEngineVersionNeptuneResult.fromMap(Map<String, dynamic> map) {
    return GetEngineVersionNeptuneResult(
      defaultCharacterSet: map['defaultCharacterSet'] as String,
      defaultOnly:
          map['defaultOnly'] == null ? null : map['defaultOnly'] as bool,
      engine: map['engine'] == null ? null : map['engine'] as String,
      engineDescription: map['engineDescription'] as String,
      exportableLogTypes: (map['exportableLogTypes'] as List).cast<String>(),
      hasMajorTarget:
          map['hasMajorTarget'] == null ? null : map['hasMajorTarget'] as bool,
      hasMinorTarget:
          map['hasMinorTarget'] == null ? null : map['hasMinorTarget'] as bool,
      id: map['id'] as String,
      latest: map['latest'] == null ? null : map['latest'] as bool,
      parameterGroupFamily: map['parameterGroupFamily'] as String,
      preferredMajorTargets: map['preferredMajorTargets'] == null
          ? null
          : (map['preferredMajorTargets'] as List).cast<String>(),
      preferredUpgradeTargets: map['preferredUpgradeTargets'] == null
          ? null
          : (map['preferredUpgradeTargets'] as List).cast<String>(),
      preferredVersions: map['preferredVersions'] == null
          ? null
          : (map['preferredVersions'] as List).cast<String>(),
      region: map['region'] as String,
      supportedCharacterSets:
          (map['supportedCharacterSets'] as List).cast<String>(),
      supportedTimezones: (map['supportedTimezones'] as List).cast<String>(),
      supportsGlobalDatabases: map['supportsGlobalDatabases'] as bool,
      supportsLogExportsToCloudwatch:
          map['supportsLogExportsToCloudwatch'] as bool,
      supportsReadReplica: map['supportsReadReplica'] as bool,
      validMajorTargets: (map['validMajorTargets'] as List).cast<String>(),
      validMinorTargets: (map['validMinorTargets'] as List).cast<String>(),
      validUpgradeTargets: (map['validUpgradeTargets'] as List).cast<String>(),
      version: map['version'] as String,
      versionActual: map['versionActual'] as String,
      versionDescription: map['versionDescription'] as String,
    );
  }
}
