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
  final List<String>? allowedFqdnList;
  /// The user owned AML workspace properties.
  final UserOwnedAmlWorkspace? amlWorkspace;
  /// The api properties for special APIs.
  final ApiProperties? apiProperties;
  /// Optional subdomain name used for token-based authentication.
  final String? customSubDomainName;
  final bool? disableLocalAuth;
  /// The flag to enable dynamic throttling.
  final bool? dynamicThrottlingEnabled;
  /// The encryption properties for this resource.
  final Encryption? encryption;
  /// The multiregion settings of Cognitive Services account.
  final MultiRegionSettings? locations;
  /// Resource migration token.
  final String? migrationToken;
  /// A collection of rules governing the accessibility from specific network locations.
  final NetworkRuleSet? networkAcls;
  /// Whether or not public endpoint access is allowed for this account.
  final String? publicNetworkAccess;
  /// Cognitive Services Rai Monitor Config.
  final RaiMonitorConfig? raiMonitorConfig;
  final bool? restore;
  final bool? restrictOutboundNetworkAccess;
  /// The storage accounts for this resource.
  final List<UserOwnedStorage>? userOwnedStorage;

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
      'amlWorkspace': ?amlWorkspace == null ? null : amlWorkspace!.toMap(),
      'apiProperties': ?apiProperties == null ? null : apiProperties!.toMap(),
      'customSubDomainName': ?customSubDomainName,
      'disableLocalAuth': ?disableLocalAuth,
      'dynamicThrottlingEnabled': ?dynamicThrottlingEnabled,
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'locations': ?locations == null ? null : locations!.toMap(),
      'migrationToken': ?migrationToken,
      'networkAcls': ?networkAcls == null ? null : networkAcls!.toMap(),
      'publicNetworkAccess': ?publicNetworkAccess,
      'raiMonitorConfig': ?raiMonitorConfig == null ? null : raiMonitorConfig!.toMap(),
      'restore': ?restore,
      'restrictOutboundNetworkAccess': ?restrictOutboundNetworkAccess,
      'userOwnedStorage': ?userOwnedStorage == null ? null : pulumi.Input.encodeList<UserOwnedStorage, Map<String, dynamic>>(userOwnedStorage!, (value) => value.toMap()),
    };
  }

  factory AccountProperties.fromMap(Map<String, dynamic> map) {
    return AccountProperties(
      allowedFqdnList: map['allowedFqdnList'] == null ? null : (map['allowedFqdnList'] as List).cast<String>(),
      amlWorkspace: map['amlWorkspace'] == null ? null : UserOwnedAmlWorkspace.fromMap((map['amlWorkspace'] as Map).cast<String, dynamic>()),
      apiProperties: map['apiProperties'] == null ? null : ApiProperties.fromMap((map['apiProperties'] as Map).cast<String, dynamic>()),
      customSubDomainName: map['customSubDomainName'] == null ? null : map['customSubDomainName'] as String,
      disableLocalAuth: map['disableLocalAuth'] == null ? null : map['disableLocalAuth'] as bool,
      dynamicThrottlingEnabled: map['dynamicThrottlingEnabled'] == null ? null : map['dynamicThrottlingEnabled'] as bool,
      encryption: map['encryption'] == null ? null : Encryption.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      locations: map['locations'] == null ? null : MultiRegionSettings.fromMap((map['locations'] as Map).cast<String, dynamic>()),
      migrationToken: map['migrationToken'] == null ? null : map['migrationToken'] as String,
      networkAcls: map['networkAcls'] == null ? null : NetworkRuleSet.fromMap((map['networkAcls'] as Map).cast<String, dynamic>()),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      raiMonitorConfig: map['raiMonitorConfig'] == null ? null : RaiMonitorConfig.fromMap((map['raiMonitorConfig'] as Map).cast<String, dynamic>()),
      restore: map['restore'] == null ? null : map['restore'] as bool,
      restrictOutboundNetworkAccess: map['restrictOutboundNetworkAccess'] == null ? null : map['restrictOutboundNetworkAccess'] as bool,
      userOwnedStorage: map['userOwnedStorage'] == null ? null : pulumi.Input.decodeList<UserOwnedStorage>(map['userOwnedStorage'], (value) => UserOwnedStorage.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

