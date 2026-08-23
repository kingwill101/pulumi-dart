// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_policy_entry_response.dart';
import 'network_rule_set_response.dart';
import 'private_endpoint_connection_item_response.dart';
import 'sku_response.dart';

/// Properties of the vault
class VaultPropertiesResponse {
  /// An array of 0 to 1024 identities that have access to the key vault. All identities in the array must use the same tenant ID as the key vault's tenant ID. When `createMode` is set to `recover`, access policies are not required. Otherwise, access policies are required.
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<AccessPolicyEntryResponse>>? accessPolicies;
  /// Property specifying whether protection against purge is enabled for this vault. Setting this property to true activates protection against purge for this vault and its content - only the Key Vault service may initiate a hard, irrecoverable deletion. The setting is effective only if soft delete is also enabled. Enabling this functionality is irreversible - that is, the property does not accept false as its value.
  final pulumi.Input<bool>? enablePurgeProtection;
  /// Property that controls how data actions are authorized. When true, the key vault will use Role Based Access Control (RBAC) for authorization of data actions, and the access policies specified in vault properties will be  ignored. When false, the key vault will use the access policies specified in vault properties, and any policy stored on Azure Resource Manager will be ignored. If null or not specified, the vault is created with the default value of false. Note that management actions are always authorized with RBAC.
  final pulumi.Input<bool>? enableRbacAuthorization;
  /// Property to specify whether the 'soft delete' functionality is enabled for this key vault. If it's not set to any value(true or false) when creating new key vault, it will be set to true by default. Once set to true, it cannot be reverted to false.
  final pulumi.Input<bool>? enableSoftDelete;
  /// Property to specify whether Azure Virtual Machines are permitted to retrieve certificates stored as secrets from the key vault.
  final pulumi.Input<bool>? enabledForDeployment;
  /// Property to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys.
  final pulumi.Input<bool>? enabledForDiskEncryption;
  /// Property to specify whether Azure Resource Manager is permitted to retrieve secrets from the key vault.
  final pulumi.Input<bool>? enabledForTemplateDeployment;
  /// The resource id of HSM Pool.
  final pulumi.Input<String> hsmPoolResourceId;
  /// Rules governing the accessibility of the key vault from specific network locations.
  final pulumi.Input<NetworkRuleSetResponse>? networkAcls;
  /// List of private endpoint connections associated with the key vault.
  final pulumi.Input<List<PrivateEndpointConnectionItemResponse>> privateEndpointConnections;
  /// Provisioning state of the vault.
  final pulumi.Input<String> provisioningState;
  /// Property to specify whether the vault will accept traffic from public internet. If set to 'disabled' all traffic except private endpoint traffic and that that originates from trusted services will be blocked. This will override the set firewall rules, meaning that even if the firewall rules are present we will not honor the rules.
  final pulumi.Input<String>? publicNetworkAccess;
  /// SKU details
  final pulumi.Input<SkuResponse> sku;
  /// softDelete data retention days. It accepts &gt;=7 and &lt;=90.
  final pulumi.Input<int>? softDeleteRetentionInDays;
  /// The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault.
  final pulumi.Input<String> tenantId;
  /// The URI of the vault for performing operations on keys and secrets.
  final pulumi.Input<String> vaultUri;

  /// Creates a new [VaultPropertiesResponse].
  /// [accessPolicies] An array of 0 to 1024 identities that have access to the key vault. All identities in the array must use the same tenant ID as the key vault's tenant ID. When `createMode` is set to `recover`, access policies are not required. Otherwise, access policies are required.
  /// [enablePurgeProtection] Property specifying whether protection against purge is enabled for this vault. Setting this property to true activates protection against purge for this vault and its content - only the Key Vault service may initiate a hard, irrecoverable deletion. The setting is effective only if soft delete is also enabled. Enabling this functionality is irreversible - that is, the property does not accept false as its value.
  /// [enableRbacAuthorization] Property that controls how data actions are authorized. When true, the key vault will use Role Based Access Control (RBAC) for authorization of data actions, and the access policies specified in vault properties will be  ignored. When false, the key vault will use the access policies specified in vault properties, and any policy stored on Azure Resource Manager will be ignored. If null or not specified, the vault is created with the default value of false. Note that management actions are always authorized with RBAC.
  /// [enableSoftDelete] Property to specify whether the 'soft delete' functionality is enabled for this key vault. If it's not set to any value(true or false) when creating new key vault, it will be set to true by default. Once set to true, it cannot be reverted to false.
  /// [enabledForDeployment] Property to specify whether Azure Virtual Machines are permitted to retrieve certificates stored as secrets from the key vault.
  /// [enabledForDiskEncryption] Property to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys.
  /// [enabledForTemplateDeployment] Property to specify whether Azure Resource Manager is permitted to retrieve secrets from the key vault.
  /// [hsmPoolResourceId] The resource id of HSM Pool.
  /// [networkAcls] Rules governing the accessibility of the key vault from specific network locations.
  /// [privateEndpointConnections] List of private endpoint connections associated with the key vault.
  /// [provisioningState] Provisioning state of the vault.
  /// [publicNetworkAccess] Property to specify whether the vault will accept traffic from public internet. If set to 'disabled' all traffic except private endpoint traffic and that that originates from trusted services will be blocked. This will override the set firewall rules, meaning that even if the firewall rules are present we will not honor the rules.
  /// [sku] SKU details
  /// [softDeleteRetentionInDays] softDelete data retention days. It accepts &gt;=7 and &lt;=90.
  /// [tenantId] The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault.
  /// [vaultUri] The URI of the vault for performing operations on keys and secrets.
  const VaultPropertiesResponse({
    this.accessPolicies,
    this.enablePurgeProtection,
    this.enableRbacAuthorization,
    this.enableSoftDelete,
    this.enabledForDeployment,
    this.enabledForDiskEncryption,
    this.enabledForTemplateDeployment,
    required this.hsmPoolResourceId,
    this.networkAcls,
    required this.privateEndpointConnections,
    required this.provisioningState,
    this.publicNetworkAccess,
    required this.sku,
    this.softDeleteRetentionInDays,
    required this.tenantId,
    required this.vaultUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies': ?pulumi.Input.mapOptionalInputValue<List<AccessPolicyEntryResponse>, List<Map<String, dynamic>>>(accessPolicies, (value) => pulumi.Input.encodeList<AccessPolicyEntryResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enablePurgeProtection': ?enablePurgeProtection,
      'enableRbacAuthorization': ?enableRbacAuthorization,
      'enableSoftDelete': ?enableSoftDelete,
      'enabledForDeployment': ?enabledForDeployment,
      'enabledForDiskEncryption': ?enabledForDiskEncryption,
      'enabledForTemplateDeployment': ?enabledForTemplateDeployment,
      'hsmPoolResourceId': hsmPoolResourceId,
      'networkAcls': ?pulumi.Input.mapOptionalInputValue<NetworkRuleSetResponse, Map<String, dynamic>>(networkAcls, (value) => value.toMap()),
      'privateEndpointConnections': pulumi.Input.mapInputValue<List<PrivateEndpointConnectionItemResponse>, List<Map<String, dynamic>>>(privateEndpointConnections, (value) => pulumi.Input.encodeList<PrivateEndpointConnectionItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'sku': pulumi.Input.mapInputValue<SkuResponse, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'softDeleteRetentionInDays': ?softDeleteRetentionInDays,
      'tenantId': tenantId,
      'vaultUri': vaultUri,
    };
  }

  factory VaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VaultPropertiesResponse(
      accessPolicies: (() { final guardedValue = map['accessPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessPolicyEntryResponse>(guardedValue, (value) => AccessPolicyEntryResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enablePurgeProtection: (() { final guardedValue = map['enablePurgeProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableRbacAuthorization: (() { final guardedValue = map['enableRbacAuthorization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableSoftDelete: (() { final guardedValue = map['enableSoftDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabledForDeployment: (() { final guardedValue = map['enabledForDeployment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabledForDiskEncryption: (() { final guardedValue = map['enabledForDiskEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabledForTemplateDeployment: (() { final guardedValue = map['enabledForTemplateDeployment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hsmPoolResourceId: pulumi.Input.fromValue(map['hsmPoolResourceId'] as String),
      networkAcls: (() { final guardedValue = map['networkAcls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkRuleSetResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateEndpointConnections: pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateEndpointConnectionItemResponse>(map['privateEndpointConnections']!, (value) => PrivateEndpointConnectionItemResponse.fromMap((value as Map).cast<String, dynamic>()))),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: pulumi.Input.fromValue(SkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      softDeleteRetentionInDays: (() { final guardedValue = map['softDeleteRetentionInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      vaultUri: pulumi.Input.fromValue(map['vaultUri'] as String),
    );
  }
}
