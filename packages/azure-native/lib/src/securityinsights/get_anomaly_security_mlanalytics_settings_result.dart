// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_mlanalytics_settings_data_source_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAnomalySecurityMLAnalyticsSettings.
class GetAnomalySecurityMLAnalyticsSettingsResult {
  /// The anomaly settings version of the Anomaly security ml analytics settings that dictates whether job version gets updated or not.
  final int? anomalySettingsVersion;
  /// The anomaly version of the AnomalySecurityMLAnalyticsSettings.
  final String anomalyVersion;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The customizable observations of the AnomalySecurityMLAnalyticsSettings.
  final dynamic customizableObservations;
  /// The description of the SecurityMLAnalyticsSettings.
  final String? description;
  /// The display name for settings created by this SecurityMLAnalyticsSettings.
  final String displayName;
  /// Determines whether this settings is enabled or disabled.
  final bool enabled;
  /// Etag of the azure resource
  final String? etag;
  /// The frequency that this SecurityMLAnalyticsSettings will be run.
  final String frequency;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Determines whether this anomaly security ml analytics settings is a default settings
  final bool isDefaultSettings;
  /// The kind of security ML analytics settings
  /// Expected value is 'Anomaly'.
  final String kind;
  /// The last time that this SecurityMLAnalyticsSettings has been modified.
  final String lastModifiedUtc;
  /// The name of the resource
  final String name;
  /// The required data sources for this SecurityMLAnalyticsSettings
  final List<SecurityMLAnalyticsSettingsDataSourceResponse>? requiredDataConnectors;
  /// The anomaly settings definition Id
  final String? settingsDefinitionId;
  /// The anomaly SecurityMLAnalyticsSettings status
  final String settingsStatus;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The tactics of the SecurityMLAnalyticsSettings
  final List<String>? tactics;
  /// The techniques of the SecurityMLAnalyticsSettings
  final List<String>? techniques;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetAnomalySecurityMLAnalyticsSettingsResult].
  /// [anomalySettingsVersion] The anomaly settings version of the Anomaly security ml analytics settings that dictates whether job version gets updated or not.
  /// [anomalyVersion] The anomaly version of the AnomalySecurityMLAnalyticsSettings.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [customizableObservations] The customizable observations of the AnomalySecurityMLAnalyticsSettings.
  /// [description] The description of the SecurityMLAnalyticsSettings.
  /// [displayName] The display name for settings created by this SecurityMLAnalyticsSettings.
  /// [enabled] Determines whether this settings is enabled or disabled.
  /// [etag] Etag of the azure resource
  /// [frequency] The frequency that this SecurityMLAnalyticsSettings will be run.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [isDefaultSettings] Determines whether this anomaly security ml analytics settings is a default settings
  /// [kind] The kind of security ML analytics settings
  /// [lastModifiedUtc] The last time that this SecurityMLAnalyticsSettings has been modified.
  /// [name] The name of the resource
  /// [requiredDataConnectors] The required data sources for this SecurityMLAnalyticsSettings
  /// [settingsDefinitionId] The anomaly settings definition Id
  /// [settingsStatus] The anomaly SecurityMLAnalyticsSettings status
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tactics] The tactics of the SecurityMLAnalyticsSettings
  /// [techniques] The techniques of the SecurityMLAnalyticsSettings
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetAnomalySecurityMLAnalyticsSettingsResult({
    this.anomalySettingsVersion,
    required this.anomalyVersion,
    required this.azureApiVersion,
    this.customizableObservations,
    this.description,
    required this.displayName,
    required this.enabled,
    this.etag,
    required this.frequency,
    required this.id,
    required this.isDefaultSettings,
    required this.kind,
    required this.lastModifiedUtc,
    required this.name,
    this.requiredDataConnectors,
    this.settingsDefinitionId,
    required this.settingsStatus,
    required this.systemData,
    this.tactics,
    this.techniques,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anomalySettingsVersion': ?anomalySettingsVersion,
      'anomalyVersion': anomalyVersion,
      'azureApiVersion': azureApiVersion,
      'customizableObservations': ?customizableObservations,
      'description': ?description,
      'displayName': displayName,
      'enabled': enabled,
      'etag': ?etag,
      'frequency': frequency,
      'id': id,
      'isDefaultSettings': isDefaultSettings,
      'kind': kind,
      'lastModifiedUtc': lastModifiedUtc,
      'name': name,
      'requiredDataConnectors': ?requiredDataConnectors == null ? null : pulumi.Input.encodeList<SecurityMLAnalyticsSettingsDataSourceResponse, Map<String, dynamic>>(requiredDataConnectors!, (value) => value.toMap()),
      'settingsDefinitionId': ?settingsDefinitionId,
      'settingsStatus': settingsStatus,
      'systemData': systemData.toMap(),
      'tactics': ?tactics,
      'techniques': ?techniques,
      'type': type,
    };
  }

  factory GetAnomalySecurityMLAnalyticsSettingsResult.fromMap(Map<String, dynamic> map) {
    return GetAnomalySecurityMLAnalyticsSettingsResult(
      anomalySettingsVersion: map['anomalySettingsVersion'] == null ? null : map['anomalySettingsVersion'] as int,
      anomalyVersion: map['anomalyVersion'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      customizableObservations: map['customizableObservations'] == null ? null : map['customizableObservations'],
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      enabled: map['enabled'] as bool,
      etag: map['etag'] == null ? null : map['etag'] as String,
      frequency: map['frequency'] as String,
      id: map['id'] as String,
      isDefaultSettings: map['isDefaultSettings'] as bool,
      kind: map['kind'] as String,
      lastModifiedUtc: map['lastModifiedUtc'] as String,
      name: map['name'] as String,
      requiredDataConnectors: map['requiredDataConnectors'] == null ? null : pulumi.Input.decodeList<SecurityMLAnalyticsSettingsDataSourceResponse>(map['requiredDataConnectors'], (value) => SecurityMLAnalyticsSettingsDataSourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      settingsDefinitionId: map['settingsDefinitionId'] == null ? null : map['settingsDefinitionId'] as String,
      settingsStatus: map['settingsStatus'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tactics: map['tactics'] == null ? null : (map['tactics'] as List).cast<String>(),
      techniques: map['techniques'] == null ? null : (map['techniques'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}

