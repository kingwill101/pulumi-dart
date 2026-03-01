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

  /// Creates a new [GetEngineVersionResult].
  /// [engine] Optional.
  /// [engineDescription] Description of the database engine.
  /// [exportableLogTypes] Set of log types that the database engine has available for export to CloudWatch Logs.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [parameterGroupFamily] Required.
  /// [preferredVersions] Optional.
  /// [region] Required.
  /// [supportsLogExportsToCloudwatch] Indicates whether the engine version supports exporting the log types specified by `exportable_log_types` to CloudWatch Logs.
  /// [validUpgradeTargets] A set of engine versions that this database engine version can be upgraded to.
  /// [version] Required.
  /// [versionDescription] Description of the database engine version.
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
    return <String, dynamic>{
      'engine': ?engine,
      'engineDescription': engineDescription,
      'exportableLogTypes': exportableLogTypes,
      'id': id,
      'parameterGroupFamily': parameterGroupFamily,
      'preferredVersions': ?preferredVersions,
      'region': region,
      'supportsLogExportsToCloudwatch': supportsLogExportsToCloudwatch,
      'validUpgradeTargets': validUpgradeTargets,
      'version': version,
      'versionDescription': versionDescription,
    };
  }

  factory GetEngineVersionResult.fromMap(Map<String, dynamic> map) {
    return GetEngineVersionResult(
      engine: map['engine'] == null ? null : map['engine'] as String,
      engineDescription: map['engineDescription'] as String,
      exportableLogTypes: (map['exportableLogTypes'] as List).cast<String>(),
      id: map['id'] as String,
      parameterGroupFamily: map['parameterGroupFamily'] as String,
      preferredVersions: map['preferredVersions'] == null ? null : (map['preferredVersions'] as List).cast<String>(),
      region: map['region'] as String,
      supportsLogExportsToCloudwatch: map['supportsLogExportsToCloudwatch'] as bool,
      validUpgradeTargets: (map['validUpgradeTargets'] as List).cast<String>(),
      version: map['version'] as String,
      versionDescription: map['versionDescription'] as String,
    );
  }
}

