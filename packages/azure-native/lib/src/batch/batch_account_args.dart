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
    String? accountName,
    List<AuthenticationMode>? allowedAuthenticationModes,
    AutoStorageBaseProperties? autoStorage,
    EncryptionProperties? encryption,
    BatchAccountIdentity? identity,
    KeyVaultReference? keyVaultReference,
    String? location,
    NetworkProfile? networkProfile,
    PoolAllocationMode? poolAllocationMode,
    PublicNetworkAccessType? publicNetworkAccess,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      allowedAuthenticationModes = pulumi.Input.asOptionalInput<List<AuthenticationMode>>(allowedAuthenticationModes),
      autoStorage = pulumi.Input.asOptionalInput<AutoStorageBaseProperties>(autoStorage),
      encryption = pulumi.Input.asOptionalInput<EncryptionProperties>(encryption),
      identity = pulumi.Input.asOptionalInput<BatchAccountIdentity>(identity),
      keyVaultReference = pulumi.Input.asOptionalInput<KeyVaultReference>(keyVaultReference),
      location = pulumi.Input.asOptionalInput<String>(location),
      networkProfile = pulumi.Input.asOptionalInput<NetworkProfile>(networkProfile),
      poolAllocationMode = pulumi.Input.asOptionalInput<PoolAllocationMode>(poolAllocationMode),
      publicNetworkAccess = pulumi.Input.asOptionalInput<PublicNetworkAccessType>(publicNetworkAccess),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'allowedAuthenticationModes': ?pulumi.Input.mapOptionalInputValue<List<AuthenticationMode>, List<String>>(allowedAuthenticationModes, (value) => pulumi.Input.encodeList<AuthenticationMode, String>(value, (value) => value.value)),
      'autoStorage': ?pulumi.Input.mapOptionalInputValue<AutoStorageBaseProperties, Map<String, dynamic>>(autoStorage, (value) => value.toMap()),
      'encryption': ?pulumi.Input.mapOptionalInputValue<EncryptionProperties, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<BatchAccountIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyVaultReference': ?pulumi.Input.mapOptionalInputValue<KeyVaultReference, Map<String, dynamic>>(keyVaultReference, (value) => value.toMap()),
      'location': ?location,
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<NetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'poolAllocationMode': ?pulumi.Input.mapOptionalInputValue<PoolAllocationMode, String>(poolAllocationMode, (value) => value.value),
      'publicNetworkAccess': ?pulumi.Input.mapOptionalInputValue<PublicNetworkAccessType, String>(publicNetworkAccess, (value) => value.value),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory BatchAccountArgs.fromMap(Map<String, dynamic> map) {
    return BatchAccountArgs(
      accountName: map['accountName'] == null ? null : map['accountName'] as String,
      allowedAuthenticationModes: map['allowedAuthenticationModes'] == null ? null : pulumi.Input.decodeList<AuthenticationMode>(map['allowedAuthenticationModes'], (value) => AuthenticationMode.fromValue(value as String)),
      autoStorage: map['autoStorage'] == null ? null : AutoStorageBaseProperties.fromMap((map['autoStorage'] as Map).cast<String, dynamic>()),
      encryption: map['encryption'] == null ? null : EncryptionProperties.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      identity: map['identity'] == null ? null : BatchAccountIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      keyVaultReference: map['keyVaultReference'] == null ? null : KeyVaultReference.fromMap((map['keyVaultReference'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      networkProfile: map['networkProfile'] == null ? null : NetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>()),
      poolAllocationMode: map['poolAllocationMode'] == null ? null : PoolAllocationMode.fromValue(map['poolAllocationMode'] as String),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : PublicNetworkAccessType.fromValue(map['publicNetworkAccess'] as String),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

