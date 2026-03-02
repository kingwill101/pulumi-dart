// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_properties.dart';
import 'encryption.dart';
import 'multi_region_settings.dart';
import 'network_rule_set.dart';
import 'rai_monitor_config.dart';
import 'user_owned_aml_workspace.dart';
import 'user_owned_storage.dart';

/// Properties of Cognitive Services account.
class AccountProperties {
  final pulumi.Input<List<String>>? allowedFqdnList;
  /// The user owned AML workspace properties.
  final pulumi.Input<UserOwnedAmlWorkspace>? amlWorkspace;
  /// The api properties for special APIs.
  final pulumi.Input<ApiProperties>? apiProperties;
  /// Optional subdomain name used for token-based authentication.
  final pulumi.Input<String>? customSubDomainName;
  final pulumi.Input<bool>? disableLocalAuth;
  /// The flag to enable dynamic throttling.
  final pulumi.Input<bool>? dynamicThrottlingEnabled;
  /// The encryption properties for this resource.
  final pulumi.Input<Encryption>? encryption;
  /// The multiregion settings of Cognitive Services account.
  final pulumi.Input<MultiRegionSettings>? locations;
  /// Resource migration token.
  final pulumi.Input<String>? migrationToken;
  /// A collection of rules governing the accessibility from specific network locations.
  final pulumi.Input<NetworkRuleSet>? networkAcls;
  /// Whether or not public endpoint access is allowed for this account.
  final pulumi.Input<String>? publicNetworkAccess;
  /// Cognitive Services Rai Monitor Config.
  final pulumi.Input<RaiMonitorConfig>? raiMonitorConfig;
  final pulumi.Input<bool>? restore;
  final pulumi.Input<bool>? restrictOutboundNetworkAccess;
  /// The storage accounts for this resource.
  final pulumi.Input<List<UserOwnedStorage>>? userOwnedStorage;

  /// Creates a new [AccountProperties].
  /// [allowedFqdnList] Optional.
  /// [amlWorkspace] The user owned AML workspace properties.
  /// [apiProperties] The api properties for special APIs.
  /// [customSubDomainName] Optional subdomain name used for token-based authentication.
  /// [disableLocalAuth] Optional.
  /// [dynamicThrottlingEnabled] The flag to enable dynamic throttling.
  /// [encryption] The encryption properties for this resource.
  /// [locations] The multiregion settings of Cognitive Services account.
  /// [migrationToken] Resource migration token.
  /// [networkAcls] A collection of rules governing the accessibility from specific network locations.
  /// [publicNetworkAccess] Whether or not public endpoint access is allowed for this account.
  /// [raiMonitorConfig] Cognitive Services Rai Monitor Config.
  /// [restore] Optional.
  /// [restrictOutboundNetworkAccess] Optional.
  /// [userOwnedStorage] The storage accounts for this resource.
  AccountProperties({
    this.allowedFqdnList,
    this.amlWorkspace,
    this.apiProperties,
    this.customSubDomainName,
    this.disableLocalAuth,
    this.dynamicThrottlingEnabled,
    this.encryption,
    this.locations,
    this.migrationToken,
    this.networkAcls,
    this.publicNetworkAccess,
    this.raiMonitorConfig,
    this.restore,
    this.restrictOutboundNetworkAccess,
    this.userOwnedStorage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedFqdnList': ?allowedFqdnList,
      'amlWorkspace': ?pulumi.Input.mapOptionalInputValue<UserOwnedAmlWorkspace, Map<String, dynamic>>(amlWorkspace, (value) => value.toMap()),
      'apiProperties': ?pulumi.Input.mapOptionalInputValue<ApiProperties, Map<String, dynamic>>(apiProperties, (value) => value.toMap()),
      'customSubDomainName': ?customSubDomainName,
      'disableLocalAuth': ?disableLocalAuth,
      'dynamicThrottlingEnabled': ?dynamicThrottlingEnabled,
      'encryption': ?pulumi.Input.mapOptionalInputValue<Encryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'locations': ?pulumi.Input.mapOptionalInputValue<MultiRegionSettings, Map<String, dynamic>>(locations, (value) => value.toMap()),
      'migrationToken': ?migrationToken,
      'networkAcls': ?pulumi.Input.mapOptionalInputValue<NetworkRuleSet, Map<String, dynamic>>(networkAcls, (value) => value.toMap()),
      'publicNetworkAccess': ?publicNetworkAccess,
      'raiMonitorConfig': ?pulumi.Input.mapOptionalInputValue<RaiMonitorConfig, Map<String, dynamic>>(raiMonitorConfig, (value) => value.toMap()),
      'restore': ?restore,
      'restrictOutboundNetworkAccess': ?restrictOutboundNetworkAccess,
      'userOwnedStorage': ?pulumi.Input.mapOptionalInputValue<List<UserOwnedStorage>, List<Map<String, dynamic>>>(userOwnedStorage, (value) => pulumi.Input.encodeList<UserOwnedStorage, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AccountProperties.fromMap(Map<String, dynamic> map) {
    return AccountProperties(
      allowedFqdnList: map['allowedFqdnList'] == null ? null : ((map['allowedFqdnList']! as List).cast<String>()).input(),
      amlWorkspace: map['amlWorkspace'] == null ? null : (UserOwnedAmlWorkspace.fromMap((map['amlWorkspace']! as Map).cast<String, dynamic>())).input(),
      apiProperties: map['apiProperties'] == null ? null : (ApiProperties.fromMap((map['apiProperties']! as Map).cast<String, dynamic>())).input(),
      customSubDomainName: map['customSubDomainName'] == null ? null : (map['customSubDomainName']! as String).input(),
      disableLocalAuth: map['disableLocalAuth'] == null ? null : (map['disableLocalAuth']! as bool).input(),
      dynamicThrottlingEnabled: map['dynamicThrottlingEnabled'] == null ? null : (map['dynamicThrottlingEnabled']! as bool).input(),
      encryption: map['encryption'] == null ? null : (Encryption.fromMap((map['encryption']! as Map).cast<String, dynamic>())).input(),
      locations: map['locations'] == null ? null : (MultiRegionSettings.fromMap((map['locations']! as Map).cast<String, dynamic>())).input(),
      migrationToken: map['migrationToken'] == null ? null : (map['migrationToken']! as String).input(),
      networkAcls: map['networkAcls'] == null ? null : (NetworkRuleSet.fromMap((map['networkAcls']! as Map).cast<String, dynamic>())).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess']! as String).input(),
      raiMonitorConfig: map['raiMonitorConfig'] == null ? null : (RaiMonitorConfig.fromMap((map['raiMonitorConfig']! as Map).cast<String, dynamic>())).input(),
      restore: map['restore'] == null ? null : (map['restore']! as bool).input(),
      restrictOutboundNetworkAccess: map['restrictOutboundNetworkAccess'] == null ? null : (map['restrictOutboundNetworkAccess']! as bool).input(),
      userOwnedStorage: map['userOwnedStorage'] == null ? null : (pulumi.Input.decodeList<UserOwnedStorage>(map['userOwnedStorage']!, (value) => UserOwnedStorage.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

