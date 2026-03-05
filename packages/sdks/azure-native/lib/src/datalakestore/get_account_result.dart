// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_config_response.dart';
import 'encryption_identity_response.dart';
import 'firewall_rule_response.dart';
import 'trusted_id_provider_response.dart';
import 'virtual_network_rule_response.dart';

/// Result data returned by getAccount.
class GetAccountResult {
  /// The unique identifier associated with this Data Lake Store account.
  final String accountId;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The account creation time.
  final String creationTime;
  /// The commitment tier in use for the current month.
  final String currentTier;
  /// The default owner group for all new folders and files created in the Data Lake Store account.
  final String defaultGroup;
  /// The Key Vault encryption configuration.
  final EncryptionConfigResponse encryptionConfig;
  /// The current state of encryption provisioning for this Data Lake Store account.
  final String encryptionProvisioningState;
  /// The current state of encryption for this Data Lake Store account.
  final String encryptionState;
  /// The full CName endpoint for this account.
  final String endpoint;
  /// The current state of allowing or disallowing IPs originating within Azure through the firewall. If the firewall is disabled, this is not enforced.
  final String firewallAllowAzureIps;
  /// The list of firewall rules associated with this Data Lake Store account.
  final List<FirewallRuleResponse> firewallRules;
  /// The current state of the IP address firewall for this Data Lake Store account.
  final String firewallState;
  /// The resource identifier.
  final String id;
  /// The Key Vault encryption identity, if any.
  final EncryptionIdentityResponse identity;
  /// The account last modified time.
  final String lastModifiedTime;
  /// The resource location.
  final String location;
  /// The resource name.
  final String name;
  /// The commitment tier to use for next month.
  final String newTier;
  /// The provisioning status of the Data Lake Store account.
  final String provisioningState;
  /// The state of the Data Lake Store account.
  final String state;
  /// The resource tags.
  final Map<String, String> tags;
  /// The current state of the trusted identity provider feature for this Data Lake Store account.
  final String trustedIdProviderState;
  /// The list of trusted identity providers associated with this Data Lake Store account.
  final List<TrustedIdProviderResponse> trustedIdProviders;
  /// The resource type.
  final String type;
  /// The list of virtual network rules associated with this Data Lake Store account.
  final List<VirtualNetworkRuleResponse> virtualNetworkRules;

  /// Creates a new [GetAccountResult].
  /// [accountId] The unique identifier associated with this Data Lake Store account.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationTime] The account creation time.
  /// [currentTier] The commitment tier in use for the current month.
  /// [defaultGroup] The default owner group for all new folders and files created in the Data Lake Store account.
  /// [encryptionConfig] The Key Vault encryption configuration.
  /// [encryptionProvisioningState] The current state of encryption provisioning for this Data Lake Store account.
  /// [encryptionState] The current state of encryption for this Data Lake Store account.
  /// [endpoint] The full CName endpoint for this account.
  /// [firewallAllowAzureIps] The current state of allowing or disallowing IPs originating within Azure through the firewall. If the firewall is disabled, this is not enforced.
  /// [firewallRules] The list of firewall rules associated with this Data Lake Store account.
  /// [firewallState] The current state of the IP address firewall for this Data Lake Store account.
  /// [id] The resource identifier.
  /// [identity] The Key Vault encryption identity, if any.
  /// [lastModifiedTime] The account last modified time.
  /// [location] The resource location.
  /// [name] The resource name.
  /// [newTier] The commitment tier to use for next month.
  /// [provisioningState] The provisioning status of the Data Lake Store account.
  /// [state] The state of the Data Lake Store account.
  /// [tags] The resource tags.
  /// [trustedIdProviderState] The current state of the trusted identity provider feature for this Data Lake Store account.
  /// [trustedIdProviders] The list of trusted identity providers associated with this Data Lake Store account.
  /// [type] The resource type.
  /// [virtualNetworkRules] The list of virtual network rules associated with this Data Lake Store account.
  GetAccountResult({
    required this.accountId,
    required this.azureApiVersion,
    required this.creationTime,
    required this.currentTier,
    required this.defaultGroup,
    required this.encryptionConfig,
    required this.encryptionProvisioningState,
    required this.encryptionState,
    required this.endpoint,
    required this.firewallAllowAzureIps,
    required this.firewallRules,
    required this.firewallState,
    required this.id,
    required this.identity,
    required this.lastModifiedTime,
    required this.location,
    required this.name,
    required this.newTier,
    required this.provisioningState,
    required this.state,
    required this.tags,
    required this.trustedIdProviderState,
    required this.trustedIdProviders,
    required this.type,
    required this.virtualNetworkRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'azureApiVersion': azureApiVersion,
      'creationTime': creationTime,
      'currentTier': currentTier,
      'defaultGroup': defaultGroup,
      'encryptionConfig': encryptionConfig.toMap(),
      'encryptionProvisioningState': encryptionProvisioningState,
      'encryptionState': encryptionState,
      'endpoint': endpoint,
      'firewallAllowAzureIps': firewallAllowAzureIps,
      'firewallRules': pulumi.Input.encodeList<FirewallRuleResponse, Map<String, dynamic>>(firewallRules, (value) => value.toMap()),
      'firewallState': firewallState,
      'id': id,
      'identity': identity.toMap(),
      'lastModifiedTime': lastModifiedTime,
      'location': location,
      'name': name,
      'newTier': newTier,
      'provisioningState': provisioningState,
      'state': state,
      'tags': tags,
      'trustedIdProviderState': trustedIdProviderState,
      'trustedIdProviders': pulumi.Input.encodeList<TrustedIdProviderResponse, Map<String, dynamic>>(trustedIdProviders, (value) => value.toMap()),
      'type': type,
      'virtualNetworkRules': pulumi.Input.encodeList<VirtualNetworkRuleResponse, Map<String, dynamic>>(virtualNetworkRules, (value) => value.toMap()),
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      accountId: map['accountId'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      creationTime: map['creationTime'] as String,
      currentTier: map['currentTier'] as String,
      defaultGroup: map['defaultGroup'] as String,
      encryptionConfig: EncryptionConfigResponse.fromMap((map['encryptionConfig']! as Map).cast<String, dynamic>()),
      encryptionProvisioningState: map['encryptionProvisioningState'] as String,
      encryptionState: map['encryptionState'] as String,
      endpoint: map['endpoint'] as String,
      firewallAllowAzureIps: map['firewallAllowAzureIps'] as String,
      firewallRules: pulumi.Input.decodeList<FirewallRuleResponse>(map['firewallRules']!, (value) => FirewallRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      firewallState: map['firewallState'] as String,
      id: map['id'] as String,
      identity: EncryptionIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      lastModifiedTime: map['lastModifiedTime'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      newTier: map['newTier'] as String,
      provisioningState: map['provisioningState'] as String,
      state: map['state'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      trustedIdProviderState: map['trustedIdProviderState'] as String,
      trustedIdProviders: pulumi.Input.decodeList<TrustedIdProviderResponse>(map['trustedIdProviders']!, (value) => TrustedIdProviderResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
      virtualNetworkRules: pulumi.Input.decodeList<VirtualNetworkRuleResponse>(map['virtualNetworkRules']!, (value) => VirtualNetworkRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

