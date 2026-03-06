// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_diagnostics_response.dart';
import 'domain_security_settings_response.dart';
import 'ldaps_settings_response.dart';
import 'migration_properties_response.dart';
import 'notification_settings_response.dart';
import 'replica_set_response.dart';
import 'resource_forest_settings_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDomainService.
class GetDomainServiceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Configuration diagnostics data containing latest execution from client.
  final ConfigDiagnosticsResponse? configDiagnostics;
  /// Deployment Id
  final String deploymentId;
  /// Domain Configuration Type
  final String? domainConfigurationType;
  /// The name of the Azure domain that the user would like to deploy Domain Services to.
  final String? domainName;
  /// DomainSecurity Settings
  final DomainSecuritySettingsResponse? domainSecuritySettings;
  /// Resource etag
  final String? etag;
  /// Enabled or Disabled flag to turn on Group-based filtered sync
  final String? filteredSync;
  /// Resource Id
  final String id;
  /// Secure LDAP Settings
  final LdapsSettingsResponse? ldapsSettings;
  /// Resource location
  final String? location;
  /// Migration Properties
  final MigrationPropertiesResponse migrationProperties;
  /// Resource name
  final String name;
  /// Notification Settings
  final NotificationSettingsResponse? notificationSettings;
  /// the current deployment or provisioning state, which only appears in the response.
  final String provisioningState;
  /// List of ReplicaSets
  final List<ReplicaSetResponse>? replicaSets;
  /// Resource Forest Settings
  final ResourceForestSettingsResponse? resourceForestSettings;
  /// Sku Type
  final String? sku;
  /// The unique sync application id of the Azure AD Domain Services deployment.
  final String syncApplicationId;
  /// SyncOwner ReplicaSet Id
  final String syncOwner;
  /// All or CloudOnly, All users in AAD are synced to AAD DS domain or only users actively syncing in the cloud
  final String? syncScope;
  /// The system meta data relating to this resource.
  final SystemDataResponse systemData;
  /// Resource tags
  final Map<String, String>? tags;
  /// Azure Active Directory Tenant Id
  final String tenantId;
  /// Resource type
  final String type;
  /// Data Model Version
  final int version;

  /// Creates a new [GetDomainServiceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [configDiagnostics] Configuration diagnostics data containing latest execution from client.
  /// [deploymentId] Deployment Id
  /// [domainConfigurationType] Domain Configuration Type
  /// [domainName] The name of the Azure domain that the user would like to deploy Domain Services to.
  /// [domainSecuritySettings] DomainSecurity Settings
  /// [etag] Resource etag
  /// [filteredSync] Enabled or Disabled flag to turn on Group-based filtered sync
  /// [id] Resource Id
  /// [ldapsSettings] Secure LDAP Settings
  /// [location] Resource location
  /// [migrationProperties] Migration Properties
  /// [name] Resource name
  /// [notificationSettings] Notification Settings
  /// [provisioningState] the current deployment or provisioning state, which only appears in the response.
  /// [replicaSets] List of ReplicaSets
  /// [resourceForestSettings] Resource Forest Settings
  /// [sku] Sku Type
  /// [syncApplicationId] The unique sync application id of the Azure AD Domain Services deployment.
  /// [syncOwner] SyncOwner ReplicaSet Id
  /// [syncScope] All or CloudOnly, All users in AAD are synced to AAD DS domain or only users actively syncing in the cloud
  /// [systemData] The system meta data relating to this resource.
  /// [tags] Resource tags
  /// [tenantId] Azure Active Directory Tenant Id
  /// [type] Resource type
  /// [version] Data Model Version
  const GetDomainServiceResult({
    required this.azureApiVersion,
    this.configDiagnostics,
    required this.deploymentId,
    this.domainConfigurationType,
    this.domainName,
    this.domainSecuritySettings,
    this.etag,
    this.filteredSync,
    required this.id,
    this.ldapsSettings,
    this.location,
    required this.migrationProperties,
    required this.name,
    this.notificationSettings,
    required this.provisioningState,
    this.replicaSets,
    this.resourceForestSettings,
    this.sku,
    required this.syncApplicationId,
    required this.syncOwner,
    this.syncScope,
    required this.systemData,
    this.tags,
    required this.tenantId,
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'configDiagnostics': ?configDiagnostics?.toMap(),
      'deploymentId': deploymentId,
      'domainConfigurationType': ?domainConfigurationType,
      'domainName': ?domainName,
      'domainSecuritySettings': ?domainSecuritySettings?.toMap(),
      'etag': ?etag,
      'filteredSync': ?filteredSync,
      'id': id,
      'ldapsSettings': ?ldapsSettings?.toMap(),
      'location': ?location,
      'migrationProperties': migrationProperties.toMap(),
      'name': name,
      'notificationSettings': ?notificationSettings?.toMap(),
      'provisioningState': provisioningState,
      'replicaSets': ?(() { final guardedValue = replicaSets; if (guardedValue == null) return null; return pulumi.Input.encodeList<ReplicaSetResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourceForestSettings': ?resourceForestSettings?.toMap(),
      'sku': ?sku,
      'syncApplicationId': syncApplicationId,
      'syncOwner': syncOwner,
      'syncScope': ?syncScope,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'tenantId': tenantId,
      'type': type,
      'version': version,
    };
  }

  factory GetDomainServiceResult.fromMap(Map<String, dynamic> map) {
    return GetDomainServiceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      configDiagnostics: (() { final guardedValue = map['configDiagnostics']; if (guardedValue == null) return null; return ConfigDiagnosticsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      deploymentId: map['deploymentId'] as String,
      domainConfigurationType: (() { final guardedValue = map['domainConfigurationType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainSecuritySettings: (() { final guardedValue = map['domainSecuritySettings']; if (guardedValue == null) return null; return DomainSecuritySettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filteredSync: (() { final guardedValue = map['filteredSync']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ldapsSettings: (() { final guardedValue = map['ldapsSettings']; if (guardedValue == null) return null; return LdapsSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      migrationProperties: MigrationPropertiesResponse.fromMap((map['migrationProperties']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      notificationSettings: (() { final guardedValue = map['notificationSettings']; if (guardedValue == null) return null; return NotificationSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: map['provisioningState'] as String,
      replicaSets: (() { final guardedValue = map['replicaSets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReplicaSetResponse>(guardedValue, (value) => ReplicaSetResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourceForestSettings: (() { final guardedValue = map['resourceForestSettings']; if (guardedValue == null) return null; return ResourceForestSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      syncApplicationId: map['syncApplicationId'] as String,
      syncOwner: map['syncOwner'] as String,
      syncScope: (() { final guardedValue = map['syncScope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
      version: map['version'] as int,
    );
  }
}

