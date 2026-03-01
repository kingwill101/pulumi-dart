// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity.dart';

/// {@template pulumi_devcenter_encryption_set_args_doc}
/// The set of arguments for EncryptionSet.
/// {@endtemplate}
/// {@macro pulumi_devcenter_encryption_set_args_doc}
class EncryptionSetArgs {
  /// The name of the devcenter.
  final pulumi.Input<String> devCenterName;
  /// Devbox disk encryption enable or disable status. Indicates if Devbox disks encryption using DevCenter CMK is enabled or not.
  final pulumi.Input<String>? devboxDisksEncryptionEnableStatus;
  /// The name of the devcenter encryption set.
  final pulumi.Input<String>? encryptionSetName;
  /// Managed identity properties
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// Key encryption key Url, versioned or non-versioned. Ex: https://contosovault.vault.azure.net/keys/contosokek/562a4bb76b524a1493a6afe8e536ee78 or https://contosovault.vault.azure.net/keys/contosokek.
  final pulumi.Input<String>? keyEncryptionKeyUrl;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EncryptionSetArgs].
  /// [devCenterName] The name of the devcenter.
  /// [devboxDisksEncryptionEnableStatus] Devbox disk encryption enable or disable status. Indicates if Devbox disks encryption using DevCenter CMK is enabled or not.
  /// [encryptionSetName] The name of the devcenter encryption set.
  /// [identity] Managed identity properties
  /// [keyEncryptionKeyUrl] Key encryption key Url, versioned or non-versioned. Ex: https://contosovault.vault.azure.net/keys/contosokek/562a4bb76b524a1493a6afe8e536ee78 or https://contosovault.vault.azure.net/keys/contosokek.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  EncryptionSetArgs({
    required String devCenterName,
    String? devboxDisksEncryptionEnableStatus,
    String? encryptionSetName,
    ManagedServiceIdentity? identity,
    String? keyEncryptionKeyUrl,
    String? location,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      devCenterName = pulumi.Input.asInput<String>(devCenterName),
      devboxDisksEncryptionEnableStatus = pulumi.Input.asOptionalInput<String>(devboxDisksEncryptionEnableStatus),
      encryptionSetName = pulumi.Input.asOptionalInput<String>(encryptionSetName),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      keyEncryptionKeyUrl = pulumi.Input.asOptionalInput<String>(keyEncryptionKeyUrl),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterName': devCenterName,
      'devboxDisksEncryptionEnableStatus': ?devboxDisksEncryptionEnableStatus,
      'encryptionSetName': ?encryptionSetName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyEncryptionKeyUrl': ?keyEncryptionKeyUrl,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory EncryptionSetArgs.fromMap(Map<String, dynamic> map) {
    return EncryptionSetArgs(
      devCenterName: map['devCenterName'] as String,
      devboxDisksEncryptionEnableStatus: map['devboxDisksEncryptionEnableStatus'] == null ? null : map['devboxDisksEncryptionEnableStatus'] as String,
      encryptionSetName: map['encryptionSetName'] == null ? null : map['encryptionSetName'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      keyEncryptionKeyUrl: map['keyEncryptionKeyUrl'] == null ? null : map['keyEncryptionKeyUrl'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

