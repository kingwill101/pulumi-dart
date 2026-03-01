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
    pulumi.Output<ConfigDiagnostics>? configDiagnostics,
    pulumi.Output<String>? domainConfigurationType,
    pulumi.Output<String>? domainName,
    pulumi.Output<DomainSecuritySettings>? domainSecuritySettings,
    pulumi.Output<String>? domainServiceName,
    pulumi.Output<String>? filteredSync,
    pulumi.Output<LdapsSettings>? ldapsSettings,
    pulumi.Output<String>? location,
    pulumi.Output<NotificationSettings>? notificationSettings,
    pulumi.Output<List<ReplicaSet>>? replicaSets,
    pulumi.Output<ResourceForestSettings>? resourceForestSettings,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? sku,
    pulumi.Output<String>? syncScope,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      configDiagnostics = pulumi.Input.asOptionalInput<ConfigDiagnostics>(configDiagnostics),
      domainConfigurationType = pulumi.Input.asOptionalInput<String>(domainConfigurationType),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      domainSecuritySettings = pulumi.Input.asOptionalInput<DomainSecuritySettings>(domainSecuritySettings),
      domainServiceName = pulumi.Input.asOptionalInput<String>(domainServiceName),
      filteredSync = pulumi.Input.asOptionalInput<String>(filteredSync),
      ldapsSettings = pulumi.Input.asOptionalInput<LdapsSettings>(ldapsSettings),
      location = pulumi.Input.asOptionalInput<String>(location),
      notificationSettings = pulumi.Input.asOptionalInput<NotificationSettings>(notificationSettings),
      replicaSets = pulumi.Input.asOptionalInput<List<ReplicaSet>>(replicaSets),
      resourceForestSettings = pulumi.Input.asOptionalInput<ResourceForestSettings>(resourceForestSettings),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<String>(sku),
      syncScope = pulumi.Input.asOptionalInput<String>(syncScope),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      configDiagnostics: map['configDiagnostics'] == null ? null : pulumi.Output.create<ConfigDiagnostics>(ConfigDiagnostics.fromMap((map['configDiagnostics'] as Map).cast<String, dynamic>())),
      domainConfigurationType: map['domainConfigurationType'] == null ? null : pulumi.Output.create<String>(map['domainConfigurationType'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      domainSecuritySettings: map['domainSecuritySettings'] == null ? null : pulumi.Output.create<DomainSecuritySettings>(DomainSecuritySettings.fromMap((map['domainSecuritySettings'] as Map).cast<String, dynamic>())),
      domainServiceName: map['domainServiceName'] == null ? null : pulumi.Output.create<String>(map['domainServiceName'] as String),
      filteredSync: map['filteredSync'] == null ? null : pulumi.Output.create<String>(map['filteredSync'] as String),
      ldapsSettings: map['ldapsSettings'] == null ? null : pulumi.Output.create<LdapsSettings>(LdapsSettings.fromMap((map['ldapsSettings'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      notificationSettings: map['notificationSettings'] == null ? null : pulumi.Output.create<NotificationSettings>(NotificationSettings.fromMap((map['notificationSettings'] as Map).cast<String, dynamic>())),
      replicaSets: map['replicaSets'] == null ? null : pulumi.Output.create<List<ReplicaSet>>(pulumi.Input.decodeList<ReplicaSet>(map['replicaSets'], (value) => ReplicaSet.fromMap((value as Map).cast<String, dynamic>()))),
      resourceForestSettings: map['resourceForestSettings'] == null ? null : pulumi.Output.create<ResourceForestSettings>(ResourceForestSettings.fromMap((map['resourceForestSettings'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<String>(map['sku'] as String),
      syncScope: map['syncScope'] == null ? null : pulumi.Output.create<String>(map['syncScope'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

