// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authentication_mode.dart';
import 'auto_storage_base_properties.dart';
import 'batch_account_identity.dart';
import 'encryption_properties.dart';
import 'key_vault_reference.dart';
import 'network_profile.dart';
import 'pool_allocation_mode.dart';
import 'public_network_access_type.dart';

/// {@template pulumi_batch_batch_account_args_doc}
/// The set of arguments for BatchAccount.
/// {@endtemplate}
/// {@macro pulumi_batch_batch_account_args_doc}
class BatchAccountArgs {
  /// A name for the Batch account which must be unique within the region. Batch account names must be between 3 and 24 characters in length and must use only numbers and lowercase letters. This name is used as part of the DNS name that is used to access the Batch service in the region in which the account is created. For example: http://accountname.region.batch.azure.com/.
  final pulumi.Input<String>? accountName;
  /// List of allowed authentication modes for the Batch account that can be used to authenticate with the data plane. This does not affect authentication with the control plane.
  final pulumi.Input<List<AuthenticationMode>>? allowedAuthenticationModes;
  /// The properties related to the auto-storage account.
  final pulumi.Input<AutoStorageBaseProperties>? autoStorage;
  /// Configures how customer data is encrypted inside the Batch account. By default, accounts are encrypted using a Microsoft managed key. For additional control, a customer-managed key can be used instead.
  final pulumi.Input<EncryptionProperties>? encryption;
  /// The identity of the Batch account.
  final pulumi.Input<BatchAccountIdentity>? identity;
  /// A reference to the Azure key vault associated with the Batch account.
  final pulumi.Input<KeyVaultReference>? keyVaultReference;
  /// The region in which to create the account.
  final pulumi.Input<String>? location;
  /// The network profile only takes effect when publicNetworkAccess is enabled.
  final pulumi.Input<NetworkProfile>? networkProfile;
  /// The pool allocation mode also affects how clients may authenticate to the Batch Service API. If the mode is BatchService, clients may authenticate using access keys or Microsoft Entra ID. If the mode is UserSubscription, clients must use Microsoft Entra ID. The default is BatchService.
  final pulumi.Input<PoolAllocationMode>? poolAllocationMode;
  /// The network access type for operating on the resources in the Batch account.
  final pulumi.Input<PublicNetworkAccessType>? publicNetworkAccess;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The user-specified tags associated with the account.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [BatchAccountArgs].
  /// [accountName] A name for the Batch account which must be unique within the region. Batch account names must be between 3 and 24 characters in length and must use only numbers and lowercase letters. This name is used as part of the DNS name that is used to access the Batch service in the region in which the account is created. For example: http://accountname.region.batch.azure.com/.
  /// [allowedAuthenticationModes] List of allowed authentication modes for the Batch account that can be used to authenticate with the data plane. This does not affect authentication with the control plane.
  /// [autoStorage] The properties related to the auto-storage account.
  /// [encryption] Configures how customer data is encrypted inside the Batch account. By default, accounts are encrypted using a Microsoft managed key. For additional control, a customer-managed key can be used instead.
  /// [identity] The identity of the Batch account.
  /// [keyVaultReference] A reference to the Azure key vault associated with the Batch account.
  /// [location] The region in which to create the account.
  /// [networkProfile] The network profile only takes effect when publicNetworkAccess is enabled.
  /// [poolAllocationMode] The pool allocation mode also affects how clients may authenticate to the Batch Service API. If the mode is BatchService, clients may authenticate using access keys or Microsoft Entra ID. If the mode is UserSubscription, clients must use Microsoft Entra ID. The default is BatchService.
  /// [publicNetworkAccess] The network access type for operating on the resources in the Batch account.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] The user-specified tags associated with the account.
  BatchAccountArgs({
    this.accountName,
    this.allowedAuthenticationModes,
    this.autoStorage,
    this.encryption,
    this.identity,
    this.keyVaultReference,
    this.location,
    this.networkProfile,
    this.poolAllocationMode,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'allowedAuthenticationModes': ?pulumi.Input.mapOptionalInputValue<List<AuthenticationMode>, List<String>>(allowedAuthenticationModes, (value) => pulumi.Input.encodeList<AuthenticationMode, String>(value, (value) => value.wireValue)),
      'autoStorage': ?pulumi.Input.mapOptionalInputValue<AutoStorageBaseProperties, Map<String, dynamic>>(autoStorage, (value) => value.toMap()),
      'encryption': ?pulumi.Input.mapOptionalInputValue<EncryptionProperties, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<BatchAccountIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyVaultReference': ?pulumi.Input.mapOptionalInputValue<KeyVaultReference, Map<String, dynamic>>(keyVaultReference, (value) => value.toMap()),
      'location': ?location,
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<NetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'poolAllocationMode': ?pulumi.Input.mapOptionalInputValue<PoolAllocationMode, String>(poolAllocationMode, (value) => value.wireValue),
      'publicNetworkAccess': ?pulumi.Input.mapOptionalInputValue<PublicNetworkAccessType, String>(publicNetworkAccess, (value) => value.wireValue),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory BatchAccountArgs.fromMap(Map<String, dynamic> map) {
    return BatchAccountArgs(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowedAuthenticationModes: (() { final guardedValue = map['allowedAuthenticationModes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthenticationMode>(guardedValue, (value) => AuthenticationMode.fromValue(value as String))); })(),
      autoStorage: (() { final guardedValue = map['autoStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoStorageBaseProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BatchAccountIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyVaultReference: (() { final guardedValue = map['keyVaultReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      poolAllocationMode: (() { final guardedValue = map['poolAllocationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolAllocationMode.fromValue(guardedValue as String)); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PublicNetworkAccessType.fromValue(guardedValue as String)); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

