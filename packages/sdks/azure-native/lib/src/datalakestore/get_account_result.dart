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
  final String? accountId;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The account creation time.
  final String? creationTime;
  /// The commitment tier in use for the current month.
  final String? currentTier;
  /// The default owner group for all new folders and files created in the Data Lake Store account.
  final String? defaultGroup;
  /// The Key Vault encryption configuration.
  final EncryptionConfigResponse? encryptionConfig;
  /// The current state of encryption provisioning for this Data Lake Store account.
  final String? encryptionProvisioningState;
  /// The current state of encryption for this Data Lake Store account.
  final String? encryptionState;
  /// The full CName endpoint for this account.
  final String? endpoint;
  /// The current state of allowing or disallowing IPs originating within Azure through the firewall. If the firewall is disabled, this is not enforced.
  final String? firewallAllowAzureIps;
  /// The list of firewall rules associated with this Data Lake Store account.
  final List<FirewallRuleResponse>? firewallRules;
  /// The current state of the IP address firewall for this Data Lake Store account.
  final String? firewallState;
  /// The resource identifier.
  final String? id;
  /// The Key Vault encryption identity, if any.
  final EncryptionIdentityResponse? identity;
  /// The account last modified time.
  final String? lastModifiedTime;
  /// The resource location.
  final String? location;
  /// The resource name.
  final String? name;
  /// The commitment tier to use for next month.
  final String? newTier;
  /// The provisioning status of the Data Lake Store account.
  final String? provisioningState;
  /// The state of the Data Lake Store account.
  final String? state;
  /// The resource tags.
  final Map<String, String>? tags;
  /// The current state of the trusted identity provider feature for this Data Lake Store account.
  final String? trustedIdProviderState;
  /// The list of trusted identity providers associated with this Data Lake Store account.
  final List<TrustedIdProviderResponse>? trustedIdProviders;
  /// The resource type.
  final String? type;
  /// The list of virtual network rules associated with this Data Lake Store account.
  final List<VirtualNetworkRuleResponse>? virtualNetworkRules;

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
  const GetAccountResult({
    this.accountId,
    this.azureApiVersion,
    this.creationTime,
    this.currentTier,
    this.defaultGroup,
    this.encryptionConfig,
    this.encryptionProvisioningState,
    this.encryptionState,
    this.endpoint,
    this.firewallAllowAzureIps,
    this.firewallRules,
    this.firewallState,
    this.id,
    this.identity,
    this.lastModifiedTime,
    this.location,
    this.name,
    this.newTier,
    this.provisioningState,
    this.state,
    this.tags,
    this.trustedIdProviderState,
    this.trustedIdProviders,
    this.type,
    this.virtualNetworkRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'azureApiVersion': ?azureApiVersion,
      'creationTime': ?creationTime,
      'currentTier': ?currentTier,
      'defaultGroup': ?defaultGroup,
      'encryptionConfig': ?encryptionConfig?.toMap(),
      'encryptionProvisioningState': ?encryptionProvisioningState,
      'encryptionState': ?encryptionState,
      'endpoint': ?endpoint,
      'firewallAllowAzureIps': ?firewallAllowAzureIps,
      'firewallRules': ?(() { final guardedValue = firewallRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<FirewallRuleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'firewallState': ?firewallState,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'lastModifiedTime': ?lastModifiedTime,
      'location': ?location,
      'name': ?name,
      'newTier': ?newTier,
      'provisioningState': ?provisioningState,
      'state': ?state,
      'tags': ?tags,
      'trustedIdProviderState': ?trustedIdProviderState,
      'trustedIdProviders': ?(() { final guardedValue = trustedIdProviders; if (guardedValue == null) return null; return pulumi.Input.encodeList<TrustedIdProviderResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
      'virtualNetworkRules': ?(() { final guardedValue = virtualNetworkRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<VirtualNetworkRuleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      currentTier: (() { final guardedValue = map['currentTier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultGroup: (() { final guardedValue = map['defaultGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptionConfig: (() { final guardedValue = map['encryptionConfig']; if (guardedValue == null) return null; return EncryptionConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      encryptionProvisioningState: (() { final guardedValue = map['encryptionProvisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptionState: (() { final guardedValue = map['encryptionState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      firewallAllowAzureIps: (() { final guardedValue = map['firewallAllowAzureIps']; if (guardedValue == null) return null; return guardedValue as String; })(),
      firewallRules: (() { final guardedValue = map['firewallRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<FirewallRuleResponse>(guardedValue, (value) => FirewallRuleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      firewallState: (() { final guardedValue = map['firewallState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return EncryptionIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      newTier: (() { final guardedValue = map['newTier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      trustedIdProviderState: (() { final guardedValue = map['trustedIdProviderState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trustedIdProviders: (() { final guardedValue = map['trustedIdProviders']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TrustedIdProviderResponse>(guardedValue, (value) => TrustedIdProviderResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualNetworkRules: (() { final guardedValue = map['virtualNetworkRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualNetworkRuleResponse>(guardedValue, (value) => VirtualNetworkRuleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
