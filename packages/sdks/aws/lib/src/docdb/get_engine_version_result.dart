// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEngineVersion.
class GetEngineVersionResult {
  final String? engine;
  /// Description of the database engine.
  final String? engineDescription;
  /// Set of log types that the database engine has available for export to CloudWatch Logs.
  final List<String>? exportableLogTypes;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? parameterGroupFamily;
  final List<String>? preferredVersions;
  final String? region;
  /// Indicates whether the engine version supports exporting the log types specified by `exportableLogTypes` to CloudWatch Logs.
  final bool? supportsLogExportsToCloudwatch;
  /// A set of engine versions that this database engine version can be upgraded to.
  final List<String>? validUpgradeTargets;
  final String? version;
  /// Description of the database engine version.
  final String? versionDescription;

  /// Creates a new [GetEngineVersionResult].
  /// [engine] Optional.
  /// [engineDescription] Description of the database engine.
  /// [exportableLogTypes] Set of log types that the database engine has available for export to CloudWatch Logs.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [parameterGroupFamily] Optional.
  /// [preferredVersions] Optional.
  /// [region] Optional.
  /// [supportsLogExportsToCloudwatch] Indicates whether the engine version supports exporting the log types specified by `exportableLogTypes` to CloudWatch Logs.
  /// [validUpgradeTargets] A set of engine versions that this database engine version can be upgraded to.
  /// [version] Optional.
  /// [versionDescription] Description of the database engine version.
  const GetEngineVersionResult({
    this.engine,
    this.engineDescription,
    this.exportableLogTypes,
    this.id,
    this.parameterGroupFamily,
    this.preferredVersions,
    this.region,
    this.supportsLogExportsToCloudwatch,
    this.validUpgradeTargets,
    this.version,
    this.versionDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': ?engine,
      'engineDescription': ?engineDescription,
      'exportableLogTypes': ?exportableLogTypes,
      'id': ?id,
      'parameterGroupFamily': ?parameterGroupFamily,
      'preferredVersions': ?preferredVersions,
      'region': ?region,
      'supportsLogExportsToCloudwatch': ?supportsLogExportsToCloudwatch,
      'validUpgradeTargets': ?validUpgradeTargets,
      'version': ?version,
      'versionDescription': ?versionDescription,
    };
  }

  factory GetEngineVersionResult.fromMap(Map<String, dynamic> map) {
    return GetEngineVersionResult(
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return guardedValue as String; })(),
      engineDescription: (() { final guardedValue = map['engineDescription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      exportableLogTypes: (() { final guardedValue = map['exportableLogTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameterGroupFamily: (() { final guardedValue = map['parameterGroupFamily']; if (guardedValue == null) return null; return guardedValue as String; })(),
      preferredVersions: (() { final guardedValue = map['preferredVersions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportsLogExportsToCloudwatch: (() { final guardedValue = map['supportsLogExportsToCloudwatch']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      validUpgradeTargets: (() { final guardedValue = map['validUpgradeTargets']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionDescription: (() { final guardedValue = map['versionDescription']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
