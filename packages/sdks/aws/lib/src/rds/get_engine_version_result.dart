// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_engine_version_filter.dart';

/// Result data returned by getEngineVersion.
class GetEngineVersionResult {
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

  /// Creates a new [GetEngineVersionResult].
  /// [defaultCharacterSet] Default character set for new instances of the engine version.
  /// [defaultOnly] Optional.
  /// [engine] Required.
  /// [engineDescription] Description of the engine.
  /// [exportableLogTypes] Set of log types that the engine version has available for export to CloudWatch Logs.
  /// [filters] Optional.
  /// [hasMajorTarget] Optional.
  /// [hasMinorTarget] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [includeAll] Optional.
  /// [latest] Optional.
  /// [parameterGroupFamily] Required.
  /// [preferredMajorTargets] Optional.
  /// [preferredUpgradeTargets] Optional.
  /// [preferredVersions] Optional.
  /// [region] Required.
  /// [status] Status of the engine version, either `available` or `deprecated`.
  /// [supportedCharacterSets] Set of character sets supported by th engine version.
  /// [supportedFeatureNames] Set of features supported by the engine version.
  /// [supportedModes] Set of supported engine version modes.
  /// [supportedTimezones] Set of the time zones supported by the engine version.
  /// [supportsCertificateRotationWithoutRestart] Whether the certificates can be rotated without restarting the Aurora instance.
  /// [supportsGlobalDatabases] Whether you can use Aurora global databases with the engine version.
  /// [supportsIntegrations] Whether the engine version supports integrations with other AWS services.
  /// [supportsLimitlessDatabase] Whether the engine version supports Aurora Limitless Database.
  /// [supportsLocalWriteForwarding] Whether the engine version supports local write forwarding or not.
  /// [supportsLogExportsToCloudwatch] Whether the engine version supports exporting the log types specified by `exportable_log_types` to CloudWatch Logs.
  /// [supportsParallelQuery] Whether you can use Aurora parallel query with the engine version.
  /// [supportsReadReplica] Whether the engine version supports read replicas.
  /// [validMajorTargets] Set of versions that are valid major version upgrades for the engine version.
  /// [validMinorTargets] Set of versions that are valid minor version upgrades for the engine version.
  /// [validUpgradeTargets] Set of versions that are valid major or minor upgrades for the engine version.
  /// [version] Required.
  /// [versionActual] Complete engine version.
  /// [versionDescription] Description of the engine version.
  GetEngineVersionResult({
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
    return <String, dynamic>{
      'defaultCharacterSet': defaultCharacterSet,
      'defaultOnly': ?defaultOnly,
      'engine': engine,
      'engineDescription': engineDescription,
      'exportableLogTypes': exportableLogTypes,
      'filters': ?(() {
        final guardedValue = filters;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          GetEngineVersionFilter,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'hasMajorTarget': ?hasMajorTarget,
      'hasMinorTarget': ?hasMinorTarget,
      'id': id,
      'includeAll': ?includeAll,
      'latest': ?latest,
      'parameterGroupFamily': parameterGroupFamily,
      'preferredMajorTargets': ?preferredMajorTargets,
      'preferredUpgradeTargets': ?preferredUpgradeTargets,
      'preferredVersions': ?preferredVersions,
      'region': region,
      'status': status,
      'supportedCharacterSets': supportedCharacterSets,
      'supportedFeatureNames': supportedFeatureNames,
      'supportedModes': supportedModes,
      'supportedTimezones': supportedTimezones,
      'supportsCertificateRotationWithoutRestart':
          supportsCertificateRotationWithoutRestart,
      'supportsGlobalDatabases': supportsGlobalDatabases,
      'supportsIntegrations': supportsIntegrations,
      'supportsLimitlessDatabase': supportsLimitlessDatabase,
      'supportsLocalWriteForwarding': supportsLocalWriteForwarding,
      'supportsLogExportsToCloudwatch': supportsLogExportsToCloudwatch,
      'supportsParallelQuery': supportsParallelQuery,
      'supportsReadReplica': supportsReadReplica,
      'validMajorTargets': validMajorTargets,
      'validMinorTargets': validMinorTargets,
      'validUpgradeTargets': validUpgradeTargets,
      'version': version,
      'versionActual': versionActual,
      'versionDescription': versionDescription,
    };
  }

  factory GetEngineVersionResult.fromMap(Map<String, dynamic> map) {
    return GetEngineVersionResult(
      defaultCharacterSet: map['defaultCharacterSet'] as String,
      defaultOnly: (() {
        final guardedValue = map['defaultOnly'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      engine: map['engine'] as String,
      engineDescription: map['engineDescription'] as String,
      exportableLogTypes: (map['exportableLogTypes'] as List).cast<String>(),
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<GetEngineVersionFilter>(
          guardedValue,
          (value) => GetEngineVersionFilter.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      hasMajorTarget: (() {
        final guardedValue = map['hasMajorTarget'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      hasMinorTarget: (() {
        final guardedValue = map['hasMinorTarget'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      id: map['id'] as String,
      includeAll: (() {
        final guardedValue = map['includeAll'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      latest: (() {
        final guardedValue = map['latest'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      parameterGroupFamily: map['parameterGroupFamily'] as String,
      preferredMajorTargets: (() {
        final guardedValue = map['preferredMajorTargets'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      preferredUpgradeTargets: (() {
        final guardedValue = map['preferredUpgradeTargets'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      preferredVersions: (() {
        final guardedValue = map['preferredVersions'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      region: map['region'] as String,
      status: map['status'] as String,
      supportedCharacterSets: (map['supportedCharacterSets'] as List)
          .cast<String>(),
      supportedFeatureNames: (map['supportedFeatureNames'] as List)
          .cast<String>(),
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
