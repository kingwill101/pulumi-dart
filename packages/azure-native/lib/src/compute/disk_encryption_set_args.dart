// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_set_identity.dart';
import 'key_for_disk_encryption_set.dart';

/// {@template pulumi_compute_disk_encryption_set_args_doc}
/// The set of arguments for DiskEncryptionSet.
/// {@endtemplate}
/// {@macro pulumi_compute_disk_encryption_set_args_doc}
class DiskEncryptionSetArgs {
  /// The key vault key which is currently used by this disk encryption set.
  final pulumi.Input<KeyForDiskEncryptionSet>? activeKey;
  /// The name of the disk encryption set that is being created. The name can't be changed after the disk encryption set is created. Supported characters for the name are a-z, A-Z, 0-9, _ and -. The maximum name length is 80 characters.
  final pulumi.Input<String>? diskEncryptionSetName;
  /// The type of key used to encrypt the data of the disk.
  final pulumi.Input<String>? encryptionType;
  /// Multi-tenant application client id to access key vault in a different tenant. Setting the value to 'None' will clear the property.
  final pulumi.Input<String>? federatedClientId;
  /// The managed identity for the disk encryption set. It should be given permission on the key vault before it can be used to encrypt disks.
  final pulumi.Input<EncryptionSetIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Set this flag to true to enable auto-updating of this disk encryption set to the latest key version.
  final pulumi.Input<bool>? rotationToLatestKeyVersionEnabled;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DiskEncryptionSetArgs].
  /// [activeKey] The key vault key which is currently used by this disk encryption set.
  /// [diskEncryptionSetName] The name of the disk encryption set that is being created. The name can't be changed after the disk encryption set is created. Supported characters for the name are a-z, A-Z, 0-9, _ and -. The maximum name length is 80 characters.
  /// [encryptionType] The type of key used to encrypt the data of the disk.
  /// [federatedClientId] Multi-tenant application client id to access key vault in a different tenant. Setting the value to 'None' will clear the property.
  /// [identity] The managed identity for the disk encryption set. It should be given permission on the key vault before it can be used to encrypt disks.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [rotationToLatestKeyVersionEnabled] Set this flag to true to enable auto-updating of this disk encryption set to the latest key version.
  /// [tags] Resource tags.
  DiskEncryptionSetArgs({
    KeyForDiskEncryptionSet? activeKey,
    String? diskEncryptionSetName,
    String? encryptionType,
    String? federatedClientId,
    EncryptionSetIdentity? identity,
    String? location,
    required String resourceGroupName,
    bool? rotationToLatestKeyVersionEnabled,
    Map<String, String>? tags,
  }) :
      activeKey = pulumi.Input.asOptionalInput<KeyForDiskEncryptionSet>(activeKey),
      diskEncryptionSetName = pulumi.Input.asOptionalInput<String>(diskEncryptionSetName),
      encryptionType = pulumi.Input.asOptionalInput<String>(encryptionType),
      federatedClientId = pulumi.Input.asOptionalInput<String>(federatedClientId),
      identity = pulumi.Input.asOptionalInput<EncryptionSetIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      rotationToLatestKeyVersionEnabled = pulumi.Input.asOptionalInput<bool>(rotationToLatestKeyVersionEnabled),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeKey': ?pulumi.Input.mapOptionalInputValue<KeyForDiskEncryptionSet, Map<String, dynamic>>(activeKey, (value) => value.toMap()),
      'diskEncryptionSetName': ?diskEncryptionSetName,
      'encryptionType': ?encryptionType,
      'federatedClientId': ?federatedClientId,
      'identity': ?pulumi.Input.mapOptionalInputValue<EncryptionSetIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'rotationToLatestKeyVersionEnabled': ?rotationToLatestKeyVersionEnabled,
      'tags': ?tags,
    };
  }

  factory DiskEncryptionSetArgs.fromMap(Map<String, dynamic> map) {
    return DiskEncryptionSetArgs(
      activeKey: map['activeKey'] == null ? null : KeyForDiskEncryptionSet.fromMap((map['activeKey'] as Map).cast<String, dynamic>()),
      diskEncryptionSetName: map['diskEncryptionSetName'] == null ? null : map['diskEncryptionSetName'] as String,
      encryptionType: map['encryptionType'] == null ? null : map['encryptionType'] as String,
      federatedClientId: map['federatedClientId'] == null ? null : map['federatedClientId'] as String,
      identity: map['identity'] == null ? null : EncryptionSetIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      rotationToLatestKeyVersionEnabled: map['rotationToLatestKeyVersionEnabled'] == null ? null : map['rotationToLatestKeyVersionEnabled'] as bool,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

