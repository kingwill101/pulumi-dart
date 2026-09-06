// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_properties.dart';
import 'encryption.dart';
import 'multi_region_settings.dart';
import 'network_injection.dart';
import 'network_rule_set.dart';
import 'rai_monitor_config.dart';
import 'user_owned_aml_workspace.dart';
import 'user_owned_storage.dart';

/// Properties of Cognitive Services account.
class AccountProperties {
  /// Specifies whether this resource support project management as child resources, used as containers for access management, data isolation and cost in AI Foundry.
  final pulumi.Input<bool?>? allowProjectManagement;
  final pulumi.Input<List<String>?>? allowedFqdnList;
  /// The user owned AML account properties.
  final pulumi.Input<UserOwnedAmlWorkspace?>? amlWorkspace;
  /// The api properties for special APIs.
  final pulumi.Input<ApiProperties?>? apiProperties;
  /// Specifies the projects, by project name, that are associated with this resource.
  final pulumi.Input<List<String>?>? associatedProjects;
  /// Optional subdomain name used for token-based authentication.
  final pulumi.Input<String?>? customSubDomainName;
  /// Specifies the project, by project name, that is targeted when data plane endpoints are called without a project parameter.
  final pulumi.Input<String?>? defaultProject;
  final pulumi.Input<bool?>? disableLocalAuth;
  /// The flag to enable dynamic throttling.
  final pulumi.Input<bool?>? dynamicThrottlingEnabled;
  /// The encryption properties for this resource.
  final pulumi.Input<Encryption?>? encryption;
  /// The multiregion settings of Cognitive Services account.
  final pulumi.Input<MultiRegionSettings?>? locations;
  /// Resource migration token.
  final pulumi.Input<String?>? migrationToken;
  /// A collection of rules governing the accessibility from specific network locations.
  final pulumi.Input<NetworkRuleSet?>? networkAcls;
  final pulumi.Input<List<NetworkInjection>?>? networkInjections;
  /// Whether or not public endpoint access is allowed for this account.
  final pulumi.Input<dynamic>? publicNetworkAccess;
  /// Cognitive Services Rai Monitor Config.
  final pulumi.Input<RaiMonitorConfig?>? raiMonitorConfig;
  final pulumi.Input<bool?>? restore;
  final pulumi.Input<bool?>? restrictOutboundNetworkAccess;
  /// The storage accounts for this resource.
  final pulumi.Input<List<UserOwnedStorage>?>? userOwnedStorage;

  /// Creates a new [AccountProperties].
  /// [allowProjectManagement] Specifies whether this resource support project management as child resources, used as containers for access management, data isolation and cost in AI Foundry.
  /// [allowedFqdnList] Optional.
  /// [amlWorkspace] The user owned AML account properties.
  /// [apiProperties] The api properties for special APIs.
  /// [associatedProjects] Specifies the projects, by project name, that are associated with this resource.
  /// [customSubDomainName] Optional subdomain name used for token-based authentication.
  /// [defaultProject] Specifies the project, by project name, that is targeted when data plane endpoints are called without a project parameter.
  /// [disableLocalAuth] Optional.
  /// [dynamicThrottlingEnabled] The flag to enable dynamic throttling.
  /// [encryption] The encryption properties for this resource.
  /// [locations] The multiregion settings of Cognitive Services account.
  /// [migrationToken] Resource migration token.
  /// [networkAcls] A collection of rules governing the accessibility from specific network locations.
  /// [networkInjections] Optional.
  /// [publicNetworkAccess] Whether or not public endpoint access is allowed for this account.
  /// [raiMonitorConfig] Cognitive Services Rai Monitor Config.
  /// [restore] Optional.
  /// [restrictOutboundNetworkAccess] Optional.
  /// [userOwnedStorage] The storage accounts for this resource.
  const AccountProperties({
    this.allowProjectManagement,
    this.allowedFqdnList,
    this.amlWorkspace,
    this.apiProperties,
    this.associatedProjects,
    this.customSubDomainName,
    this.defaultProject,
    this.disableLocalAuth,
    this.dynamicThrottlingEnabled,
    this.encryption,
    this.locations,
    this.migrationToken,
    this.networkAcls,
    this.networkInjections,
    this.publicNetworkAccess,
    this.raiMonitorConfig,
    this.restore,
    this.restrictOutboundNetworkAccess,
    this.userOwnedStorage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowProjectManagement': ?allowProjectManagement,
      'allowedFqdnList': ?allowedFqdnList,
      'amlWorkspace': ?pulumi.Input.mapOptionalInputValue<UserOwnedAmlWorkspace, Map<String, dynamic>>(amlWorkspace, (value) => value.toMap()),
      'apiProperties': ?pulumi.Input.mapOptionalInputValue<ApiProperties, Map<String, dynamic>>(apiProperties, (value) => value.toMap()),
      'associatedProjects': ?associatedProjects,
      'customSubDomainName': ?customSubDomainName,
      'defaultProject': ?defaultProject,
      'disableLocalAuth': ?disableLocalAuth,
      'dynamicThrottlingEnabled': ?dynamicThrottlingEnabled,
      'encryption': ?pulumi.Input.mapOptionalInputValue<Encryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'locations': ?pulumi.Input.mapOptionalInputValue<MultiRegionSettings, Map<String, dynamic>>(locations, (value) => value.toMap()),
      'migrationToken': ?migrationToken,
      'networkAcls': ?pulumi.Input.mapOptionalInputValue<NetworkRuleSet, Map<String, dynamic>>(networkAcls, (value) => value.toMap()),
      'networkInjections': ?pulumi.Input.mapOptionalInputValue<List<NetworkInjection>, List<Map<String, dynamic>>>(networkInjections, (value) => pulumi.Input.encodeList<NetworkInjection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicNetworkAccess': ?publicNetworkAccess,
      'raiMonitorConfig': ?pulumi.Input.mapOptionalInputValue<RaiMonitorConfig, Map<String, dynamic>>(raiMonitorConfig, (value) => value.toMap()),
      'restore': ?restore,
      'restrictOutboundNetworkAccess': ?restrictOutboundNetworkAccess,
      'userOwnedStorage': ?pulumi.Input.mapOptionalInputValue<List<UserOwnedStorage>, List<Map<String, dynamic>>>(userOwnedStorage, (value) => pulumi.Input.encodeList<UserOwnedStorage, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AccountProperties.fromMap(Map<String, dynamic> map) {
    return AccountProperties(
      allowProjectManagement: (() { final guardedValue = map['allowProjectManagement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowedFqdnList: (() { final guardedValue = map['allowedFqdnList']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      amlWorkspace: (() { final guardedValue = map['amlWorkspace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserOwnedAmlWorkspace.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      apiProperties: (() { final guardedValue = map['apiProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      associatedProjects: (() { final guardedValue = map['associatedProjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      customSubDomainName: (() { final guardedValue = map['customSubDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultProject: (() { final guardedValue = map['defaultProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableLocalAuth: (() { final guardedValue = map['disableLocalAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dynamicThrottlingEnabled: (() { final guardedValue = map['dynamicThrottlingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Encryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MultiRegionSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      migrationToken: (() { final guardedValue = map['migrationToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkAcls: (() { final guardedValue = map['networkAcls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkRuleSet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkInjections: (() { final guardedValue = map['networkInjections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInjection>(guardedValue, (value) => NetworkInjection.fromMap((value as Map).cast<String, dynamic>()))); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      raiMonitorConfig: (() { final guardedValue = map['raiMonitorConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RaiMonitorConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      restore: (() { final guardedValue = map['restore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      restrictOutboundNetworkAccess: (() { final guardedValue = map['restrictOutboundNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      userOwnedStorage: (() { final guardedValue = map['userOwnedStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserOwnedStorage>(guardedValue, (value) => UserOwnedStorage.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
