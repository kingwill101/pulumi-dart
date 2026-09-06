// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_encryption_set_parameters.dart';
import 'vmdisk_security_profile.dart';

/// The parameters of a managed disk.
class ManagedDiskParameters {
  /// Specifies the customer managed disk encryption set resource id for the managed disk.
  final pulumi.Input<DiskEncryptionSetParameters?>? diskEncryptionSet;
  /// The ID of the sub-resource.
  final pulumi.Input<String?>? id;
  /// Specifies the security profile for the managed disk.
  final pulumi.Input<VMDiskSecurityProfile?>? securityProfile;
  /// Specifies the storage account type for the managed disk. NOTE: UltraSSD_LRS can only be used with data disks, it cannot be used with OS Disk.
  final pulumi.Input<dynamic>? storageAccountType;

  /// Creates a new [ManagedDiskParameters].
  /// [diskEncryptionSet] Specifies the customer managed disk encryption set resource id for the managed disk.
  /// [id] The ID of the sub-resource.
  /// [securityProfile] Specifies the security profile for the managed disk.
  /// [storageAccountType] Specifies the storage account type for the managed disk. NOTE: UltraSSD_LRS can only be used with data disks, it cannot be used with OS Disk.
  const ManagedDiskParameters({
    this.diskEncryptionSet,
    this.id,
    this.securityProfile,
    this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionSet': ?pulumi.Input.mapOptionalInputValue<DiskEncryptionSetParameters, Map<String, dynamic>>(diskEncryptionSet, (value) => value.toMap()),
      'id': ?id,
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<VMDiskSecurityProfile, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'storageAccountType': ?storageAccountType,
    };
  }

  factory ManagedDiskParameters.fromMap(Map<String, dynamic> map) {
    return ManagedDiskParameters(
      diskEncryptionSet: (() { final guardedValue = map['diskEncryptionSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskEncryptionSetParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityProfile: (() { final guardedValue = map['securityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VMDiskSecurityProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageAccountType: (() { final guardedValue = map['storageAccountType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
