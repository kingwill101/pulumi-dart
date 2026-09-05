// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEngineVersion.
class GetEngineVersionResult {
  /// Default character set for the engine version.
  final String? defaultCharacterSet;
  final bool? defaultOnly;
  final String? engine;
  /// Description of the database engine.
  final String? engineDescription;
  /// Set of log types that the database engine has available for export to CloudWatch Logs.
  final List<String>? exportableLogTypes;
  final bool? hasMajorTarget;
  final bool? hasMinorTarget;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? latest;
  final String? parameterGroupFamily;
  final List<String>? preferredMajorTargets;
  final List<String>? preferredUpgradeTargets;
  final List<String>? preferredVersions;
  final String? region;
  /// Set of character sets supported by this engine version.
  final List<String>? supportedCharacterSets;
  /// Set of time zones supported by this engine.
  final List<String>? supportedTimezones;
  /// Whether the engine version supports global databases.
  final bool? supportsGlobalDatabases;
  /// Whether the engine version supports exporting the log types specified by `exportableLogTypes` to CloudWatch Logs.
  final bool? supportsLogExportsToCloudwatch;
  /// Whether the database engine version supports read replicas.
  final bool? supportsReadReplica;
  /// Set of valid major engine versions that this version can be upgraded to.
  final List<String>? validMajorTargets;
  /// Set of valid minor engine versions that this version can be upgraded to.
  final List<String>? validMinorTargets;
  /// Set of engine versions that this database engine version can be upgraded to.
  final List<String>? validUpgradeTargets;
  final String? version;
  /// Actual engine version returned by the API.
  final String? versionActual;
  /// Description of the database engine version.
  final String? versionDescription;

  /// Creates a new [GetEngineVersionResult].
  /// [defaultCharacterSet] Default character set for the engine version.
  /// [defaultOnly] Optional.
  /// [engine] Optional.
  /// [engineDescription] Description of the database engine.
  /// [exportableLogTypes] Set of log types that the database engine has available for export to CloudWatch Logs.
  /// [hasMajorTarget] Optional.
  /// [hasMinorTarget] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [latest] Optional.
  /// [parameterGroupFamily] Optional.
  /// [preferredMajorTargets] Optional.
  /// [preferredUpgradeTargets] Optional.
  /// [preferredVersions] Optional.
  /// [region] Optional.
  /// [supportedCharacterSets] Set of character sets supported by this engine version.
  /// [supportedTimezones] Set of time zones supported by this engine.
  /// [supportsGlobalDatabases] Whether the engine version supports global databases.
  /// [supportsLogExportsToCloudwatch] Whether the engine version supports exporting the log types specified by `exportableLogTypes` to CloudWatch Logs.
  /// [supportsReadReplica] Whether the database engine version supports read replicas.
  /// [validMajorTargets] Set of valid major engine versions that this version can be upgraded to.
  /// [validMinorTargets] Set of valid minor engine versions that this version can be upgraded to.
  /// [validUpgradeTargets] Set of engine versions that this database engine version can be upgraded to.
  /// [version] Optional.
  /// [versionActual] Actual engine version returned by the API.
  /// [versionDescription] Description of the database engine version.
  const GetEngineVersionResult({
    this.defaultCharacterSet,
    this.defaultOnly,
    this.engine,
    this.engineDescription,
    this.exportableLogTypes,
    this.hasMajorTarget,
    this.hasMinorTarget,
    this.id,
    this.latest,
    this.parameterGroupFamily,
    this.preferredMajorTargets,
    this.preferredUpgradeTargets,
    this.preferredVersions,
    this.region,
    this.supportedCharacterSets,
    this.supportedTimezones,
    this.supportsGlobalDatabases,
    this.supportsLogExportsToCloudwatch,
    this.supportsReadReplica,
    this.validMajorTargets,
    this.validMinorTargets,
    this.validUpgradeTargets,
    this.version,
    this.versionActual,
    this.versionDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultCharacterSet': ?defaultCharacterSet,
      'defaultOnly': ?defaultOnly,
      'engine': ?engine,
      'engineDescription': ?engineDescription,
      'exportableLogTypes': ?exportableLogTypes,
      'hasMajorTarget': ?hasMajorTarget,
      'hasMinorTarget': ?hasMinorTarget,
      'id': ?id,
      'latest': ?latest,
      'parameterGroupFamily': ?parameterGroupFamily,
      'preferredMajorTargets': ?preferredMajorTargets,
      'preferredUpgradeTargets': ?preferredUpgradeTargets,
      'preferredVersions': ?preferredVersions,
      'region': ?region,
      'supportedCharacterSets': ?supportedCharacterSets,
      'supportedTimezones': ?supportedTimezones,
      'supportsGlobalDatabases': ?supportsGlobalDatabases,
      'supportsLogExportsToCloudwatch': ?supportsLogExportsToCloudwatch,
      'supportsReadReplica': ?supportsReadReplica,
      'validMajorTargets': ?validMajorTargets,
      'validMinorTargets': ?validMinorTargets,
      'validUpgradeTargets': ?validUpgradeTargets,
      'version': ?version,
      'versionActual': ?versionActual,
      'versionDescription': ?versionDescription,
    };
  }

  factory GetEngineVersionResult.fromMap(Map<String, dynamic> map) {
    return GetEngineVersionResult(
      defaultCharacterSet: (() { final guardedValue = map['defaultCharacterSet']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultOnly: (() { final guardedValue = map['defaultOnly']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return guardedValue as String; })(),
      engineDescription: (() { final guardedValue = map['engineDescription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      exportableLogTypes: (() { final guardedValue = map['exportableLogTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      hasMajorTarget: (() { final guardedValue = map['hasMajorTarget']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      hasMinorTarget: (() { final guardedValue = map['hasMinorTarget']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      latest: (() { final guardedValue = map['latest']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      parameterGroupFamily: (() { final guardedValue = map['parameterGroupFamily']; if (guardedValue == null) return null; return guardedValue as String; })(),
      preferredMajorTargets: (() { final guardedValue = map['preferredMajorTargets']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      preferredUpgradeTargets: (() { final guardedValue = map['preferredUpgradeTargets']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      preferredVersions: (() { final guardedValue = map['preferredVersions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportedCharacterSets: (() { final guardedValue = map['supportedCharacterSets']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      supportedTimezones: (() { final guardedValue = map['supportedTimezones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      supportsGlobalDatabases: (() { final guardedValue = map['supportsGlobalDatabases']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      supportsLogExportsToCloudwatch: (() { final guardedValue = map['supportsLogExportsToCloudwatch']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      supportsReadReplica: (() { final guardedValue = map['supportsReadReplica']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      validMajorTargets: (() { final guardedValue = map['validMajorTargets']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      validMinorTargets: (() { final guardedValue = map['validMinorTargets']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      validUpgradeTargets: (() { final guardedValue = map['validUpgradeTargets']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionActual: (() { final guardedValue = map['versionActual']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionDescription: (() { final guardedValue = map['versionDescription']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
