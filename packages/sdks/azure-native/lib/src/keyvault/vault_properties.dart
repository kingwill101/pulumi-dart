// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_policy_entry.dart';
import 'create_mode.dart';
import 'network_rule_set.dart';
import 'sku.dart';

/// Properties of the vault
class VaultProperties {
  /// An array of 0 to 1024 identities that have access to the key vault. All identities in the array must use the same tenant ID as the key vault's tenant ID. When `createMode` is set to `recover`, access policies are not required. Otherwise, access policies are required.
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<AccessPolicyEntry>>? accessPolicies;

  /// The vault's create mode to indicate whether the vault need to be recovered or not.
  final pulumi.Input<CreateMode>? createMode;

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

  /// Rules governing the accessibility of the key vault from specific network locations.
  final pulumi.Input<NetworkRuleSet>? networkAcls;

  /// Property to specify whether the vault will accept traffic from public internet. If set to 'disabled' all traffic except private endpoint traffic and that that originates from trusted services will be blocked. This will override the set firewall rules, meaning that even if the firewall rules are present we will not honor the rules.
  final pulumi.Input<String>? publicNetworkAccess;

  /// SKU details
  final pulumi.Input<Sku> sku;

  /// softDelete data retention days. It accepts &gt;=7 and &lt;=90.
  final pulumi.Input<int>? softDeleteRetentionInDays;

  /// The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault.
  final pulumi.Input<String> tenantId;

  /// Creates a new [VaultProperties].
  /// [accessPolicies] An array of 0 to 1024 identities that have access to the key vault. All identities in the array must use the same tenant ID as the key vault's tenant ID. When `createMode` is set to `recover`, access policies are not required. Otherwise, access policies are required.
  /// [createMode] The vault's create mode to indicate whether the vault need to be recovered or not.
  /// [enablePurgeProtection] Property specifying whether protection against purge is enabled for this vault. Setting this property to true activates protection against purge for this vault and its content - only the Key Vault service may initiate a hard, irrecoverable deletion. The setting is effective only if soft delete is also enabled. Enabling this functionality is irreversible - that is, the property does not accept false as its value.
  /// [enableRbacAuthorization] Property that controls how data actions are authorized. When true, the key vault will use Role Based Access Control (RBAC) for authorization of data actions, and the access policies specified in vault properties will be  ignored. When false, the key vault will use the access policies specified in vault properties, and any policy stored on Azure Resource Manager will be ignored. If null or not specified, the vault is created with the default value of false. Note that management actions are always authorized with RBAC.
  /// [enableSoftDelete] Property to specify whether the 'soft delete' functionality is enabled for this key vault. If it's not set to any value(true or false) when creating new key vault, it will be set to true by default. Once set to true, it cannot be reverted to false.
  /// [enabledForDeployment] Property to specify whether Azure Virtual Machines are permitted to retrieve certificates stored as secrets from the key vault.
  /// [enabledForDiskEncryption] Property to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys.
  /// [enabledForTemplateDeployment] Property to specify whether Azure Resource Manager is permitted to retrieve secrets from the key vault.
  /// [networkAcls] Rules governing the accessibility of the key vault from specific network locations.
  /// [publicNetworkAccess] Property to specify whether the vault will accept traffic from public internet. If set to 'disabled' all traffic except private endpoint traffic and that that originates from trusted services will be blocked. This will override the set firewall rules, meaning that even if the firewall rules are present we will not honor the rules.
  /// [sku] SKU details
  /// [softDeleteRetentionInDays] softDelete data retention days. It accepts &gt;=7 and &lt;=90.
  /// [tenantId] The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault.
  VaultProperties({
    this.accessPolicies,
    this.createMode,
    this.enablePurgeProtection,
    this.enableRbacAuthorization,
    this.enableSoftDelete,
    this.enabledForDeployment,
    this.enabledForDiskEncryption,
    this.enabledForTemplateDeployment,
    this.networkAcls,
    this.publicNetworkAccess,
    required this.sku,
    this.softDeleteRetentionInDays,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies':
          ?pulumi.Input.mapOptionalInputValue<
            List<AccessPolicyEntry>,
            List<Map<String, dynamic>>
          >(
            accessPolicies,
            (value) =>
                pulumi.Input.encodeList<
                  AccessPolicyEntry,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'createMode': ?pulumi.Input.mapOptionalInputValue<CreateMode, String>(
        createMode,
        (value) => value.wireValue,
      ),
      'enablePurgeProtection': ?enablePurgeProtection,
      'enableRbacAuthorization': ?enableRbacAuthorization,
      'enableSoftDelete': ?enableSoftDelete,
      'enabledForDeployment': ?enabledForDeployment,
      'enabledForDiskEncryption': ?enabledForDiskEncryption,
      'enabledForTemplateDeployment': ?enabledForTemplateDeployment,
      'networkAcls':
          ?pulumi.Input.mapOptionalInputValue<
            NetworkRuleSet,
            Map<String, dynamic>
          >(networkAcls, (value) => value.toMap()),
      'publicNetworkAccess': ?publicNetworkAccess,
      'sku': pulumi.Input.mapInputValue<Sku, Map<String, dynamic>>(
        sku,
        (value) => value.toMap(),
      ),
      'softDeleteRetentionInDays': ?softDeleteRetentionInDays,
      'tenantId': tenantId,
    };
  }

  factory VaultProperties.fromMap(Map<String, dynamic> map) {
    return VaultProperties(
      accessPolicies: (() {
        final guardedValue = map['accessPolicies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AccessPolicyEntry>(
            guardedValue,
            (value) => AccessPolicyEntry.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      createMode: (() {
        final guardedValue = map['createMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CreateMode.fromValue(guardedValue as String),
        );
      })(),
      enablePurgeProtection: (() {
        final guardedValue = map['enablePurgeProtection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableRbacAuthorization: (() {
        final guardedValue = map['enableRbacAuthorization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableSoftDelete: (() {
        final guardedValue = map['enableSoftDelete'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enabledForDeployment: (() {
        final guardedValue = map['enabledForDeployment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enabledForDiskEncryption: (() {
        final guardedValue = map['enabledForDiskEncryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enabledForTemplateDeployment: (() {
        final guardedValue = map['enabledForTemplateDeployment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      networkAcls: (() {
        final guardedValue = map['networkAcls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NetworkRuleSet.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      publicNetworkAccess: (() {
        final guardedValue = map['publicNetworkAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sku: pulumi.Input.fromValue(
        Sku.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      ),
      softDeleteRetentionInDays: (() {
        final guardedValue = map['softDeleteRetentionInDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}
