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
      'configDiagnostics':
          ?pulumi.Input.mapOptionalInputValue<
            ConfigDiagnostics,
            Map<String, dynamic>
          >(configDiagnostics, (value) => value.toMap()),
      'domainConfigurationType': ?domainConfigurationType,
      'domainName': ?domainName,
      'domainSecuritySettings':
          ?pulumi.Input.mapOptionalInputValue<
            DomainSecuritySettings,
            Map<String, dynamic>
          >(domainSecuritySettings, (value) => value.toMap()),
      'domainServiceName': ?domainServiceName,
      'filteredSync': ?filteredSync,
      'ldapsSettings':
          ?pulumi.Input.mapOptionalInputValue<
            LdapsSettings,
            Map<String, dynamic>
          >(ldapsSettings, (value) => value.toMap()),
      'location': ?location,
      'notificationSettings':
          ?pulumi.Input.mapOptionalInputValue<
            NotificationSettings,
            Map<String, dynamic>
          >(notificationSettings, (value) => value.toMap()),
      'replicaSets':
          ?pulumi.Input.mapOptionalInputValue<
            List<ReplicaSet>,
            List<Map<String, dynamic>>
          >(
            replicaSets,
            (value) =>
                pulumi.Input.encodeList<ReplicaSet, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'resourceForestSettings':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceForestSettings,
            Map<String, dynamic>
          >(resourceForestSettings, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sku': ?sku,
      'syncScope': ?syncScope,
      'tags': ?tags,
    };
  }

  factory DomainServiceArgs.fromMap(Map<String, dynamic> map) {
    return DomainServiceArgs(
      configDiagnostics: (() {
        final guardedValue = map['configDiagnostics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConfigDiagnostics.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      domainConfigurationType: (() {
        final guardedValue = map['domainConfigurationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domainName: (() {
        final guardedValue = map['domainName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domainSecuritySettings: (() {
        final guardedValue = map['domainSecuritySettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainSecuritySettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      domainServiceName: (() {
        final guardedValue = map['domainServiceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      filteredSync: (() {
        final guardedValue = map['filteredSync'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ldapsSettings: (() {
        final guardedValue = map['ldapsSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LdapsSettings.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      notificationSettings: (() {
        final guardedValue = map['notificationSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NotificationSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      replicaSets: (() {
        final guardedValue = map['replicaSets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ReplicaSet>(
            guardedValue,
            (value) =>
                ReplicaSet.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      resourceForestSettings: (() {
        final guardedValue = map['resourceForestSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceForestSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      syncScope: (() {
        final guardedValue = map['syncScope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
