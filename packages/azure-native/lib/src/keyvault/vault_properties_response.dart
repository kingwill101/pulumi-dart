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
  final List<AccessPolicyEntryResponse>? accessPolicies;
  /// Property specifying whether protection against purge is enabled for this vault. Setting this property to true activates protection against purge for this vault and its content - only the Key Vault service may initiate a hard, irrecoverable deletion. The setting is effective only if soft delete is also enabled. Enabling this functionality is irreversible - that is, the property does not accept false as its value.
  final bool? enablePurgeProtection;
  /// Property that controls how data actions are authorized. When true, the key vault will use Role Based Access Control (RBAC) for authorization of data actions, and the access policies specified in vault properties will be  ignored. When false, the key vault will use the access policies specified in vault properties, and any policy stored on Azure Resource Manager will be ignored. If null or not specified, the vault is created with the default value of false. Note that management actions are always authorized with RBAC.
  final bool? enableRbacAuthorization;
  /// Property to specify whether the 'soft delete' functionality is enabled for this key vault. If it's not set to any value(true or false) when creating new key vault, it will be set to true by default. Once set to true, it cannot be reverted to false.
  final bool? enableSoftDelete;
  /// Property to specify whether Azure Virtual Machines are permitted to retrieve certificates stored as secrets from the key vault.
  final bool? enabledForDeployment;
  /// Property to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys.
  final bool? enabledForDiskEncryption;
  /// Property to specify whether Azure Resource Manager is permitted to retrieve secrets from the key vault.
  final bool? enabledForTemplateDeployment;
  /// The resource id of HSM Pool.
  final String hsmPoolResourceId;
  /// Rules governing the accessibility of the key vault from specific network locations.
  final NetworkRuleSetResponse? networkAcls;
  /// List of private endpoint connections associated with the key vault.
  final List<PrivateEndpointConnectionItemResponse> privateEndpointConnections;
  /// Provisioning state of the vault.
  final String provisioningState;
  /// Property to specify whether the vault will accept traffic from public internet. If set to 'disabled' all traffic except private endpoint traffic and that that originates from trusted services will be blocked. This will override the set firewall rules, meaning that even if the firewall rules are present we will not honor the rules.
  final String? publicNetworkAccess;
  /// SKU details
  final SkuResponse sku;
  /// softDelete data retention days. It accepts >=7 and <=90.
  final int? softDeleteRetentionInDays;
  /// The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault.
  final String tenantId;
  /// The URI of the vault for performing operations on keys and secrets.
  final String vaultUri;

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
  /// [softDeleteRetentionInDays] softDelete data retention days. It accepts >=7 and <=90.
  /// [tenantId] The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault.
  /// [vaultUri] The URI of the vault for performing operations on keys and secrets.
  VaultPropertiesResponse({
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
      'accessPolicies': ?accessPolicies == null ? null : pulumi.Input.encodeList<AccessPolicyEntryResponse, Map<String, dynamic>>(accessPolicies!, (value) => value.toMap()),
      'enablePurgeProtection': ?enablePurgeProtection,
      'enableRbacAuthorization': ?enableRbacAuthorization,
      'enableSoftDelete': ?enableSoftDelete,
      'enabledForDeployment': ?enabledForDeployment,
      'enabledForDiskEncryption': ?enabledForDiskEncryption,
      'enabledForTemplateDeployment': ?enabledForTemplateDeployment,
      'hsmPoolResourceId': hsmPoolResourceId,
      'networkAcls': ?networkAcls == null ? null : networkAcls!.toMap(),
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionItemResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'sku': sku.toMap(),
      'softDeleteRetentionInDays': ?softDeleteRetentionInDays,
      'tenantId': tenantId,
      'vaultUri': vaultUri,
    };
  }

  factory VaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VaultPropertiesResponse(
      accessPolicies: map['accessPolicies'] == null ? null : pulumi.Input.decodeList<AccessPolicyEntryResponse>(map['accessPolicies'], (value) => AccessPolicyEntryResponse.fromMap((value as Map).cast<String, dynamic>())),
      enablePurgeProtection: map['enablePurgeProtection'] == null ? null : map['enablePurgeProtection'] as bool,
      enableRbacAuthorization: map['enableRbacAuthorization'] == null ? null : map['enableRbacAuthorization'] as bool,
      enableSoftDelete: map['enableSoftDelete'] == null ? null : map['enableSoftDelete'] as bool,
      enabledForDeployment: map['enabledForDeployment'] == null ? null : map['enabledForDeployment'] as bool,
      enabledForDiskEncryption: map['enabledForDiskEncryption'] == null ? null : map['enabledForDiskEncryption'] as bool,
      enabledForTemplateDeployment: map['enabledForTemplateDeployment'] == null ? null : map['enabledForTemplateDeployment'] as bool,
      hsmPoolResourceId: map['hsmPoolResourceId'] as String,
      networkAcls: map['networkAcls'] == null ? null : NetworkRuleSetResponse.fromMap((map['networkAcls'] as Map).cast<String, dynamic>()),
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionItemResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionItemResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      sku: SkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      softDeleteRetentionInDays: map['softDeleteRetentionInDays'] == null ? null : map['softDeleteRetentionInDays'] as int,
      tenantId: map['tenantId'] as String,
      vaultUri: map['vaultUri'] as String,
    );
  }
}

