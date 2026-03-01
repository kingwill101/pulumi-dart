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
  AccountArgs({
    pulumi.Output<String>? accountName,
    pulumi.Output<String>? defaultGroup,
    pulumi.Output<EncryptionConfig>? encryptionConfig,
    pulumi.Output<EncryptionState>? encryptionState,
    pulumi.Output<FirewallAllowAzureIpsState>? firewallAllowAzureIps,
    pulumi.Output<List<CreateFirewallRuleWithAccountParameters>>? firewallRules,
    pulumi.Output<FirewallState>? firewallState,
    pulumi.Output<EncryptionIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<TierType>? newTier,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<TrustedIdProviderState>? trustedIdProviderState,
    pulumi.Output<List<CreateTrustedIdProviderWithAccountParameters>>? trustedIdProviders,
    pulumi.Output<List<CreateVirtualNetworkRuleWithAccountParameters>>? virtualNetworkRules,
  }) :
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      defaultGroup = pulumi.Input.asOptionalInput<String>(defaultGroup),
      encryptionConfig = pulumi.Input.asOptionalInput<EncryptionConfig>(encryptionConfig),
      encryptionState = pulumi.Input.asOptionalInput<EncryptionState>(encryptionState),
      firewallAllowAzureIps = pulumi.Input.asOptionalInput<FirewallAllowAzureIpsState>(firewallAllowAzureIps),
      firewallRules = pulumi.Input.asOptionalInput<List<CreateFirewallRuleWithAccountParameters>>(firewallRules),
      firewallState = pulumi.Input.asOptionalInput<FirewallState>(firewallState),
      identity = pulumi.Input.asOptionalInput<EncryptionIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      newTier = pulumi.Input.asOptionalInput<TierType>(newTier),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      trustedIdProviderState = pulumi.Input.asOptionalInput<TrustedIdProviderState>(trustedIdProviderState),
      trustedIdProviders = pulumi.Input.asOptionalInput<List<CreateTrustedIdProviderWithAccountParameters>>(trustedIdProviders),
      virtualNetworkRules = pulumi.Input.asOptionalInput<List<CreateVirtualNetworkRuleWithAccountParameters>>(virtualNetworkRules);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'defaultGroup': ?defaultGroup,
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<EncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'encryptionState': ?pulumi.Input.mapOptionalInputValue<EncryptionState, String>(encryptionState, (value) => value.value),
      'firewallAllowAzureIps': ?pulumi.Input.mapOptionalInputValue<FirewallAllowAzureIpsState, String>(firewallAllowAzureIps, (value) => value.value),
      'firewallRules': ?pulumi.Input.mapOptionalInputValue<List<CreateFirewallRuleWithAccountParameters>, List<Map<String, dynamic>>>(firewallRules, (value) => pulumi.Input.encodeList<CreateFirewallRuleWithAccountParameters, Map<String, dynamic>>(value, (value) => value.toMap())),
      'firewallState': ?pulumi.Input.mapOptionalInputValue<FirewallState, String>(firewallState, (value) => value.value),
      'identity': ?pulumi.Input.mapOptionalInputValue<EncryptionIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'newTier': ?pulumi.Input.mapOptionalInputValue<TierType, String>(newTier, (value) => value.value),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'trustedIdProviderState': ?pulumi.Input.mapOptionalInputValue<TrustedIdProviderState, String>(trustedIdProviderState, (value) => value.value),
      'trustedIdProviders': ?pulumi.Input.mapOptionalInputValue<List<CreateTrustedIdProviderWithAccountParameters>, List<Map<String, dynamic>>>(trustedIdProviders, (value) => pulumi.Input.encodeList<CreateTrustedIdProviderWithAccountParameters, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualNetworkRules': ?pulumi.Input.mapOptionalInputValue<List<CreateVirtualNetworkRuleWithAccountParameters>, List<Map<String, dynamic>>>(virtualNetworkRules, (value) => pulumi.Input.encodeList<CreateVirtualNetworkRuleWithAccountParameters, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      accountName: map['accountName'] == null ? null : pulumi.Output.create<String>(map['accountName'] as String),
      defaultGroup: map['defaultGroup'] == null ? null : pulumi.Output.create<String>(map['defaultGroup'] as String),
      encryptionConfig: map['encryptionConfig'] == null ? null : pulumi.Output.create<EncryptionConfig>(EncryptionConfig.fromMap((map['encryptionConfig'] as Map).cast<String, dynamic>())),
      encryptionState: map['encryptionState'] == null ? null : pulumi.Output.create<EncryptionState>(EncryptionState.fromValue(map['encryptionState'] as String)),
      firewallAllowAzureIps: map['firewallAllowAzureIps'] == null ? null : pulumi.Output.create<FirewallAllowAzureIpsState>(FirewallAllowAzureIpsState.fromValue(map['firewallAllowAzureIps'] as String)),
      firewallRules: map['firewallRules'] == null ? null : pulumi.Output.create<List<CreateFirewallRuleWithAccountParameters>>(pulumi.Input.decodeList<CreateFirewallRuleWithAccountParameters>(map['firewallRules'], (value) => CreateFirewallRuleWithAccountParameters.fromMap((value as Map).cast<String, dynamic>()))),
      firewallState: map['firewallState'] == null ? null : pulumi.Output.create<FirewallState>(FirewallState.fromValue(map['firewallState'] as String)),
      identity: map['identity'] == null ? null : pulumi.Output.create<EncryptionIdentity>(EncryptionIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      newTier: map['newTier'] == null ? null : pulumi.Output.create<TierType>(TierType.fromValue(map['newTier'] as String)),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      trustedIdProviderState: map['trustedIdProviderState'] == null ? null : pulumi.Output.create<TrustedIdProviderState>(TrustedIdProviderState.fromValue(map['trustedIdProviderState'] as String)),
      trustedIdProviders: map['trustedIdProviders'] == null ? null : pulumi.Output.create<List<CreateTrustedIdProviderWithAccountParameters>>(pulumi.Input.decodeList<CreateTrustedIdProviderWithAccountParameters>(map['trustedIdProviders'], (value) => CreateTrustedIdProviderWithAccountParameters.fromMap((value as Map).cast<String, dynamic>()))),
      virtualNetworkRules: map['virtualNetworkRules'] == null ? null : pulumi.Output.create<List<CreateVirtualNetworkRuleWithAccountParameters>>(pulumi.Input.decodeList<CreateVirtualNetworkRuleWithAccountParameters>(map['virtualNetworkRules'], (value) => CreateVirtualNetworkRuleWithAccountParameters.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

