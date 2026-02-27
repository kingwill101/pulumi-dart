// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_engine_version_filter/get_engine_version_filter.dart';

/// Result data returned by getEngineVersion.
class GetEngineVersionRdsResult {
  /// Default character set for new instances of the engine version.
  final String defaultCharacterSet;
  final bool? defaultOnly;
  final String engine;

  /// Description of the engine.
  final String engineDescription;

  /// Set of log types that the engine version has available for export to CloudWatch Logs.
  final List<String> exportableLogTypes;
  final List<GetEngineVersionFilter>? filters;
  final bool? hasMajorTarget;
  final bool? hasMinorTarget;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? includeAll;
  final bool? latest;
  final String parameterGroupFamily;
  final List<String>? preferredMajorTargets;
  final List<String>? preferredUpgradeTargets;
  final List<String>? preferredVersions;
  final String region;

  /// Status of the engine version, either `available` or `deprecated`.
  final String status;

  /// Set of character sets supported by th engine version.
  final List<String> supportedCharacterSets;

  /// Set of features supported by the engine version.
  final List<String> supportedFeatureNames;

  /// Set of supported engine version modes.
  final List<String> supportedModes;

  /// Set of the time zones supported by the engine version.
  final List<String> supportedTimezones;

  /// Whether the certificates can be rotated without restarting the Aurora instance.
  final bool supportsCertificateRotationWithoutRestart;

  /// Whether you can use Aurora global databases with the engine version.
  final bool supportsGlobalDatabases;

  /// Whether the engine version supports integrations with other AWS services.
  final bool supportsIntegrations;

  /// Whether the engine version supports Aurora Limitless Database.
  final bool supportsLimitlessDatabase;

  /// Whether the engine version supports local write forwarding or not.
  final bool supportsLocalWriteForwarding;

  /// Whether the engine version supports exporting the log types specified by `exportable_log_types` to CloudWatch Logs.
  final bool supportsLogExportsToCloudwatch;

  /// Whether you can use Aurora parallel query with the engine version.
  final bool supportsParallelQuery;

  /// Whether the engine version supports read replicas.
  final bool supportsReadReplica;

  /// Set of versions that are valid major version upgrades for the engine version.
  final List<String> validMajorTargets;

  /// Set of versions that are valid minor version upgrades for the engine version.
  final List<String> validMinorTargets;

  /// Set of versions that are valid major or minor upgrades for the engine version.
  final List<String> validUpgradeTargets;
  final String version;

  /// Complete engine version.
  final String versionActual;

  /// Description of the engine version.
  final String versionDescription;

  GetEngineVersionRdsResult({
    required this.defaultCharacterSet,
    this.defaultOnly,
    required this.engine,
    required this.engineDescription,
    required this.exportableLogTypes,
    this.filters,
    this.hasMajorTarget,
    this.hasMinorTarget,
    required this.id,
    this.includeAll,
    this.latest,
    required this.parameterGroupFamily,
    this.preferredMajorTargets,
    this.preferredUpgradeTargets,
    this.preferredVersions,
    required this.region,
    required this.status,
    required this.supportedCharacterSets,
    required this.supportedFeatureNames,
    required this.supportedModes,
    required this.supportedTimezones,
    required this.supportsCertificateRotationWithoutRestart,
    required this.supportsGlobalDatabases,
    required this.supportsIntegrations,
    required this.supportsLimitlessDatabase,
    required this.supportsLocalWriteForwarding,
    required this.supportsLogExportsToCloudwatch,
    required this.supportsParallelQuery,
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
    map['engine'] = engine;
    map['engineDescription'] = engineDescription;
    map['exportableLogTypes'] = exportableLogTypes;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          pulumi.Input.encodeList<GetEngineVersionFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    final hasMajorTargetValue = hasMajorTarget;
    if (hasMajorTargetValue != null) {
      map['hasMajorTarget'] = hasMajorTargetValue;
    }
    final hasMinorTargetValue = hasMinorTarget;
    if (hasMinorTargetValue != null) {
      map['hasMinorTarget'] = hasMinorTargetValue;
    }
    map['id'] = id;
    final includeAllValue = includeAll;
    if (includeAllValue != null) {
      map['includeAll'] = includeAllValue;
    }
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
    map['status'] = status;
    map['supportedCharacterSets'] = supportedCharacterSets;
    map['supportedFeatureNames'] = supportedFeatureNames;
    map['supportedModes'] = supportedModes;
    map['supportedTimezones'] = supportedTimezones;
    map['supportsCertificateRotationWithoutRestart'] =
        supportsCertificateRotationWithoutRestart;
    map['supportsGlobalDatabases'] = supportsGlobalDatabases;
    map['supportsIntegrations'] = supportsIntegrations;
    map['supportsLimitlessDatabase'] = supportsLimitlessDatabase;
    map['supportsLocalWriteForwarding'] = supportsLocalWriteForwarding;
    map['supportsLogExportsToCloudwatch'] = supportsLogExportsToCloudwatch;
    map['supportsParallelQuery'] = supportsParallelQuery;
    map['supportsReadReplica'] = supportsReadReplica;
    map['validMajorTargets'] = validMajorTargets;
    map['validMinorTargets'] = validMinorTargets;
    map['validUpgradeTargets'] = validUpgradeTargets;
    map['version'] = version;
    map['versionActual'] = versionActual;
    map['versionDescription'] = versionDescription;
    return map;
  }

  factory GetEngineVersionRdsResult.fromMap(Map<String, dynamic> map) {
    return GetEngineVersionRdsResult(
      defaultCharacterSet: map['defaultCharacterSet'] as String,
      defaultOnly:
          map['defaultOnly'] == null ? null : map['defaultOnly'] as bool,
      engine: map['engine'] as String,
      engineDescription: map['engineDescription'] as String,
      exportableLogTypes: (map['exportableLogTypes'] as List).cast<String>(),
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetEngineVersionFilter>(
              map['filters'],
              (value) => GetEngineVersionFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      hasMajorTarget:
          map['hasMajorTarget'] == null ? null : map['hasMajorTarget'] as bool,
      hasMinorTarget:
          map['hasMinorTarget'] == null ? null : map['hasMinorTarget'] as bool,
      id: map['id'] as String,
      includeAll: map['includeAll'] == null ? null : map['includeAll'] as bool,
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
      status: map['status'] as String,
      supportedCharacterSets:
          (map['supportedCharacterSets'] as List).cast<String>(),
      supportedFeatureNames:
          (map['supportedFeatureNames'] as List).cast<String>(),
      supportedModes: (map['supportedModes'] as List).cast<String>(),
      supportedTimezones: (map['supportedTimezones'] as List).cast<String>(),
      supportsCertificateRotationWithoutRestart:
          map['supportsCertificateRotationWithoutRestart'] as bool,
      supportsGlobalDatabases: map['supportsGlobalDatabases'] as bool,
      supportsIntegrations: map['supportsIntegrations'] as bool,
      supportsLimitlessDatabase: map['supportsLimitlessDatabase'] as bool,
      supportsLocalWriteForwarding: map['supportsLocalWriteForwarding'] as bool,
      supportsLogExportsToCloudwatch:
          map['supportsLogExportsToCloudwatch'] as bool,
      supportsParallelQuery: map['supportsParallelQuery'] as bool,
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
