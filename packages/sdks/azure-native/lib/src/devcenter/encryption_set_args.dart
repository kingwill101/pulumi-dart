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
  const EncryptionSetArgs({
    required this.devCenterName,
    this.devboxDisksEncryptionEnableStatus,
    this.encryptionSetName,
    this.identity,
    this.keyEncryptionKeyUrl,
    this.location,
    required this.resourceGroupName,
    this.tags,
  });

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
      devCenterName: pulumi.Input.fromValue(map['devCenterName'] as String),
      devboxDisksEncryptionEnableStatus: (() { final guardedValue = map['devboxDisksEncryptionEnableStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionSetName: (() { final guardedValue = map['encryptionSetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyEncryptionKeyUrl: (() { final guardedValue = map['keyEncryptionKeyUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

