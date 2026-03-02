// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_diagnostics.dart';
import 'domain_security_settings.dart';
import 'ldaps_settings.dart';
import 'notification_settings.dart';
import 'replica_set.dart';
import 'resource_forest_settings.dart';

/// {@template pulumi_aad_domain_service_args_doc}
/// The set of arguments for DomainService.
/// {@endtemplate}
/// {@macro pulumi_aad_domain_service_args_doc}
class DomainServiceArgs {
  /// Configuration diagnostics data containing latest execution from client.
  final pulumi.Input<ConfigDiagnostics>? configDiagnostics;
  /// Domain Configuration Type
  final pulumi.Input<String>? domainConfigurationType;
  /// The name of the Azure domain that the user would like to deploy Domain Services to.
  final pulumi.Input<String>? domainName;
  /// DomainSecurity Settings
  final pulumi.Input<DomainSecuritySettings>? domainSecuritySettings;
  /// The name of the domain service.
  final pulumi.Input<String>? domainServiceName;
  /// Enabled or Disabled flag to turn on Group-based filtered sync
  final pulumi.Input<String>? filteredSync;
  /// Secure LDAP Settings
  final pulumi.Input<LdapsSettings>? ldapsSettings;
  /// Resource location
  final pulumi.Input<String>? location;
  /// Notification Settings
  final pulumi.Input<NotificationSettings>? notificationSettings;
  /// List of ReplicaSets
  final pulumi.Input<List<ReplicaSet>>? replicaSets;
  /// Resource Forest Settings
  final pulumi.Input<ResourceForestSettings>? resourceForestSettings;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Sku Type
  final pulumi.Input<String>? sku;
  /// All or CloudOnly, All users in AAD are synced to AAD DS domain or only users actively syncing in the cloud
  final pulumi.Input<String>? syncScope;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DomainServiceArgs].
  /// [configDiagnostics] Configuration diagnostics data containing latest execution from client.
  /// [domainConfigurationType] Domain Configuration Type
  /// [domainName] The name of the Azure domain that the user would like to deploy Domain Services to.
  /// [domainSecuritySettings] DomainSecurity Settings
  /// [domainServiceName] The name of the domain service.
  /// [filteredSync] Enabled or Disabled flag to turn on Group-based filtered sync
  /// [ldapsSettings] Secure LDAP Settings
  /// [location] Resource location
  /// [notificationSettings] Notification Settings
  /// [replicaSets] List of ReplicaSets
  /// [resourceForestSettings] Resource Forest Settings
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [sku] Sku Type
  /// [syncScope] All or CloudOnly, All users in AAD are synced to AAD DS domain or only users actively syncing in the cloud
  /// [tags] Resource tags
  DomainServiceArgs({
    this.configDiagnostics,
    this.domainConfigurationType,
    this.domainName,
    this.domainSecuritySettings,
    this.domainServiceName,
    this.filteredSync,
    this.ldapsSettings,
    this.location,
    this.notificationSettings,
    this.replicaSets,
    this.resourceForestSettings,
    required this.resourceGroupName,
    this.sku,
    this.syncScope,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configDiagnostics': ?pulumi.Input.mapOptionalInputValue<ConfigDiagnostics, Map<String, dynamic>>(configDiagnostics, (value) => value.toMap()),
      'domainConfigurationType': ?domainConfigurationType,
      'domainName': ?domainName,
      'domainSecuritySettings': ?pulumi.Input.mapOptionalInputValue<DomainSecuritySettings, Map<String, dynamic>>(domainSecuritySettings, (value) => value.toMap()),
      'domainServiceName': ?domainServiceName,
      'filteredSync': ?filteredSync,
      'ldapsSettings': ?pulumi.Input.mapOptionalInputValue<LdapsSettings, Map<String, dynamic>>(ldapsSettings, (value) => value.toMap()),
      'location': ?location,
      'notificationSettings': ?pulumi.Input.mapOptionalInputValue<NotificationSettings, Map<String, dynamic>>(notificationSettings, (value) => value.toMap()),
      'replicaSets': ?pulumi.Input.mapOptionalInputValue<List<ReplicaSet>, List<Map<String, dynamic>>>(replicaSets, (value) => pulumi.Input.encodeList<ReplicaSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceForestSettings': ?pulumi.Input.mapOptionalInputValue<ResourceForestSettings, Map<String, dynamic>>(resourceForestSettings, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sku': ?sku,
      'syncScope': ?syncScope,
      'tags': ?tags,
    };
  }

  factory DomainServiceArgs.fromMap(Map<String, dynamic> map) {
    return DomainServiceArgs(
      configDiagnostics: map['configDiagnostics'] == null ? null : (ConfigDiagnostics.fromMap((map['configDiagnostics'] as Map).cast<String, dynamic>())).input(),
      domainConfigurationType: map['domainConfigurationType'] == null ? null : (map['domainConfigurationType'] as String).input(),
      domainName: map['domainName'] == null ? null : (map['domainName'] as String).input(),
      domainSecuritySettings: map['domainSecuritySettings'] == null ? null : (DomainSecuritySettings.fromMap((map['domainSecuritySettings'] as Map).cast<String, dynamic>())).input(),
      domainServiceName: map['domainServiceName'] == null ? null : (map['domainServiceName'] as String).input(),
      filteredSync: map['filteredSync'] == null ? null : (map['filteredSync'] as String).input(),
      ldapsSettings: map['ldapsSettings'] == null ? null : (LdapsSettings.fromMap((map['ldapsSettings'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      notificationSettings: map['notificationSettings'] == null ? null : (NotificationSettings.fromMap((map['notificationSettings'] as Map).cast<String, dynamic>())).input(),
      replicaSets: map['replicaSets'] == null ? null : (pulumi.Input.decodeList<ReplicaSet>(map['replicaSets'], (value) => ReplicaSet.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceForestSettings: map['resourceForestSettings'] == null ? null : (ResourceForestSettings.fromMap((map['resourceForestSettings'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: map['sku'] == null ? null : (map['sku'] as String).input(),
      syncScope: map['syncScope'] == null ? null : (map['syncScope'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

