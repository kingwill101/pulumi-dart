// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'create_firewall_rule_with_account_parameters.dart';
import 'create_trusted_id_provider_with_account_parameters.dart';
import 'create_virtual_network_rule_with_account_parameters.dart';
import 'encryption_config.dart';
import 'encryption_identity.dart';
import 'encryption_state.dart';
import 'firewall_allow_azure_ips_state.dart';
import 'firewall_state.dart';
import 'tier_type.dart';
import 'trusted_id_provider_state.dart';

/// {@template pulumi_datalakestore_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_datalakestore_account_args_doc}
class AccountArgs {
  /// The name of the Data Lake Store account.
  final pulumi.Input<String>? accountName;
  /// The default owner group for all new folders and files created in the Data Lake Store account.
  final pulumi.Input<String>? defaultGroup;
  /// The Key Vault encryption configuration.
  final pulumi.Input<EncryptionConfig>? encryptionConfig;
  /// The current state of encryption for this Data Lake Store account.
  final pulumi.Input<EncryptionState>? encryptionState;
  /// The current state of allowing or disallowing IPs originating within Azure through the firewall. If the firewall is disabled, this is not enforced.
  final pulumi.Input<FirewallAllowAzureIpsState>? firewallAllowAzureIps;
  /// The list of firewall rules associated with this Data Lake Store account.
  final pulumi.Input<List<CreateFirewallRuleWithAccountParameters>>? firewallRules;
  /// The current state of the IP address firewall for this Data Lake Store account.
  final pulumi.Input<FirewallState>? firewallState;
  /// The Key Vault encryption identity, if any.
  final pulumi.Input<EncryptionIdentity>? identity;
  /// The resource location.
  final pulumi.Input<String>? location;
  /// The commitment tier to use for next month.
  final pulumi.Input<TierType>? newTier;
  /// The name of the Azure resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The current state of the trusted identity provider feature for this Data Lake Store account.
  final pulumi.Input<TrustedIdProviderState>? trustedIdProviderState;
  /// The list of trusted identity providers associated with this Data Lake Store account.
  final pulumi.Input<List<CreateTrustedIdProviderWithAccountParameters>>? trustedIdProviders;
  /// The list of virtual network rules associated with this Data Lake Store account.
  final pulumi.Input<List<CreateVirtualNetworkRuleWithAccountParameters>>? virtualNetworkRules;

  /// Creates a new [AccountArgs].
  /// [accountName] The name of the Data Lake Store account.
  /// [defaultGroup] The default owner group for all new folders and files created in the Data Lake Store account.
  /// [encryptionConfig] The Key Vault encryption configuration.
  /// [encryptionState] The current state of encryption for this Data Lake Store account.
  /// [firewallAllowAzureIps] The current state of allowing or disallowing IPs originating within Azure through the firewall. If the firewall is disabled, this is not enforced.
  /// [firewallRules] The list of firewall rules associated with this Data Lake Store account.
  /// [firewallState] The current state of the IP address firewall for this Data Lake Store account.
  /// [identity] The Key Vault encryption identity, if any.
  /// [location] The resource location.
  /// [newTier] The commitment tier to use for next month.
  /// [resourceGroupName] The name of the Azure resource group.
  /// [tags] The resource tags.
  /// [trustedIdProviderState] The current state of the trusted identity provider feature for this Data Lake Store account.
  /// [trustedIdProviders] The list of trusted identity providers associated with this Data Lake Store account.
  /// [virtualNetworkRules] The list of virtual network rules associated with this Data Lake Store account.
  const AccountArgs({
    this.accountName,
    this.defaultGroup,
    this.encryptionConfig,
    this.encryptionState,
    this.firewallAllowAzureIps,
    this.firewallRules,
    this.firewallState,
    this.identity,
    this.location,
    this.newTier,
    required this.resourceGroupName,
    this.tags,
    this.trustedIdProviderState,
    this.trustedIdProviders,
    this.virtualNetworkRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'defaultGroup': ?defaultGroup,
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<EncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'encryptionState': ?pulumi.Input.mapOptionalInputValue<EncryptionState, String>(encryptionState, (value) => value.wireValue),
      'firewallAllowAzureIps': ?pulumi.Input.mapOptionalInputValue<FirewallAllowAzureIpsState, String>(firewallAllowAzureIps, (value) => value.wireValue),
      'firewallRules': ?pulumi.Input.mapOptionalInputValue<List<CreateFirewallRuleWithAccountParameters>, List<Map<String, dynamic>>>(firewallRules, (value) => pulumi.Input.encodeList<CreateFirewallRuleWithAccountParameters, Map<String, dynamic>>(value, (value) => value.toMap())),
      'firewallState': ?pulumi.Input.mapOptionalInputValue<FirewallState, String>(firewallState, (value) => value.wireValue),
      'identity': ?pulumi.Input.mapOptionalInputValue<EncryptionIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'newTier': ?pulumi.Input.mapOptionalInputValue<TierType, String>(newTier, (value) => value.wireValue),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'trustedIdProviderState': ?pulumi.Input.mapOptionalInputValue<TrustedIdProviderState, String>(trustedIdProviderState, (value) => value.wireValue),
      'trustedIdProviders': ?pulumi.Input.mapOptionalInputValue<List<CreateTrustedIdProviderWithAccountParameters>, List<Map<String, dynamic>>>(trustedIdProviders, (value) => pulumi.Input.encodeList<CreateTrustedIdProviderWithAccountParameters, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualNetworkRules': ?pulumi.Input.mapOptionalInputValue<List<CreateVirtualNetworkRuleWithAccountParameters>, List<Map<String, dynamic>>>(virtualNetworkRules, (value) => pulumi.Input.encodeList<CreateVirtualNetworkRuleWithAccountParameters, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultGroup: (() { final guardedValue = map['defaultGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionConfig: (() { final guardedValue = map['encryptionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      encryptionState: (() { final guardedValue = map['encryptionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionState.fromValue(guardedValue as String)); })(),
      firewallAllowAzureIps: (() { final guardedValue = map['firewallAllowAzureIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallAllowAzureIpsState.fromValue(guardedValue as String)); })(),
      firewallRules: (() { final guardedValue = map['firewallRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CreateFirewallRuleWithAccountParameters>(guardedValue, (value) => CreateFirewallRuleWithAccountParameters.fromMap((value as Map).cast<String, dynamic>()))); })(),
      firewallState: (() { final guardedValue = map['firewallState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallState.fromValue(guardedValue as String)); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      newTier: (() { final guardedValue = map['newTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TierType.fromValue(guardedValue as String)); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      trustedIdProviderState: (() { final guardedValue = map['trustedIdProviderState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrustedIdProviderState.fromValue(guardedValue as String)); })(),
      trustedIdProviders: (() { final guardedValue = map['trustedIdProviders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CreateTrustedIdProviderWithAccountParameters>(guardedValue, (value) => CreateTrustedIdProviderWithAccountParameters.fromMap((value as Map).cast<String, dynamic>()))); })(),
      virtualNetworkRules: (() { final guardedValue = map['virtualNetworkRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CreateVirtualNetworkRuleWithAccountParameters>(guardedValue, (value) => CreateVirtualNetworkRuleWithAccountParameters.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
