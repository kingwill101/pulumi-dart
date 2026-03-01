// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_cluster_customer_managed_key_cluster_customer_managed_key_args_doc}
/// The set of arguments for ClusterCustomerManagedKey.
/// {@endtemplate}
/// {@macro pulumi_kusto_cluster_customer_managed_key_cluster_customer_managed_key_args_doc}
class ClusterCustomerManagedKeyArgs {
  /// The ID of the Kusto Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String> clusterId;
  /// The name of Key Vault Key.
  final pulumi.Input<String>? keyName;
  /// The ID of the Key Vault for CMK encryption.
  final pulumi.Input<String>? keyVaultId;
  /// The version of Key Vault Key.
  final pulumi.Input<String>? keyVersion;
  /// The Managed HSM Key ID for CMK encryption.
  ///
  /// > **Note:** Exactly one of `managed_hsm_key_id` or `key_vault_id` must be specified.
  final pulumi.Input<String>? managedHsmKeyId;
  /// The user assigned identity that has access to the Key Vault Key. If not specified, system assigned identity will be used.
  final pulumi.Input<String>? userIdentity;

  /// Creates a new [ClusterCustomerManagedKeyArgs].
  /// [clusterId] The ID of the Kusto Cluster. Changing this forces a new resource to be created.
  /// [keyName] The name of Key Vault Key.
  /// [keyVaultId] The ID of the Key Vault for CMK encryption.
  /// [keyVersion] The version of Key Vault Key.
  /// [managedHsmKeyId] The Managed HSM Key ID for CMK encryption.
  /// [userIdentity] The user assigned identity that has access to the Key Vault Key. If not specified, system assigned identity will be used.
  ClusterCustomerManagedKeyArgs({
    required String clusterId,
    String? keyName,
    String? keyVaultId,
    String? keyVersion,
    String? managedHsmKeyId,
    String? userIdentity,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      keyName = pulumi.Input.asOptionalInput<String>(keyName),
      keyVaultId = pulumi.Input.asOptionalInput<String>(keyVaultId),
      keyVersion = pulumi.Input.asOptionalInput<String>(keyVersion),
      managedHsmKeyId = pulumi.Input.asOptionalInput<String>(managedHsmKeyId),
      userIdentity = pulumi.Input.asOptionalInput<String>(userIdentity);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'keyName': ?keyName,
      'keyVaultId': ?keyVaultId,
      'keyVersion': ?keyVersion,
      'managedHsmKeyId': ?managedHsmKeyId,
      'userIdentity': ?userIdentity,
    };
  }

  factory ClusterCustomerManagedKeyArgs.fromMap(Map<String, dynamic> map) {
    return ClusterCustomerManagedKeyArgs(
      clusterId: map['clusterId'] as String,
      keyName: map['keyName'] == null ? null : map['keyName'] as String,
      keyVaultId: map['keyVaultId'] == null ? null : map['keyVaultId'] as String,
      keyVersion: map['keyVersion'] == null ? null : map['keyVersion'] as String,
      managedHsmKeyId: map['managedHsmKeyId'] == null ? null : map['managedHsmKeyId'] as String,
      userIdentity: map['userIdentity'] == null ? null : map['userIdentity'] as String,
    );
  }
}

