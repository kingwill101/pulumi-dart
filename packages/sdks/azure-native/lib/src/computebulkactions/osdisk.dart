// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diff_disk_settings.dart';
import 'disk_encryption_settings.dart';
import 'managed_disk_parameters.dart';
import 'virtual_hard_disk.dart';

/// Specifies information about the operating system disk used by the virtual machine. For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/managed-disks-overview).
class OSDisk {
  /// Specifies the caching requirements. Possible values are: None, ReadOnly, ReadWrite. The defaulting behavior is: None for Standard storage. ReadOnly for Premium storage.
  final pulumi.Input<String>? caching;
  /// Specifies how the virtual machine disk should be created. Possible values are Attach, FromImage. If you are using a platform image, you should also use the imageReference element described above. If you are using a marketplace image, you should also use the plan element previously described.
  final pulumi.Input<String> createOption;
  /// Specifies whether OS Disk should be deleted or detached upon VM deletion. Possible values are: Delete, Detach. The default value is set to Detach. For an ephemeral OS Disk, the default value is set to Delete. The user cannot change the delete option for an ephemeral OS Disk.
  final pulumi.Input<String>? deleteOption;
  /// Specifies the ephemeral Disk Settings for the operating system disk used by the virtual machine.
  final pulumi.Input<DiffDiskSettings>? diffDiskSettings;
  /// Specifies the size of an empty data disk in gigabytes. This element can be used to overwrite the size of the disk in a virtual machine image. The property 'diskSizeGB' is the number of bytes x 1024^3 for the disk and the value cannot be larger than 1023.
  final pulumi.Input<int>? diskSizeGB;
  /// Specifies the encryption settings for the OS Disk. Minimum compute api-version: 2015-06-15.
  final pulumi.Input<DiskEncryptionSettings>? encryptionSettings;
  /// The source user image virtual hard disk. The virtual hard disk will be copied before being attached to the virtual machine. If SourceImage is provided, the destination virtual hard drive must not exist.
  final pulumi.Input<VirtualHardDisk>? image;
  /// The managed disk parameters.
  final pulumi.Input<ManagedDiskParameters>? managedDisk;
  /// The disk name.
  final pulumi.Input<String>? name;
  /// This property allows you to specify the type of the OS that is included in the disk if creating a VM from user-image or a specialized VHD. Possible values are: Windows, Linux.
  final pulumi.Input<String>? osType;
  /// The virtual hard disk.
  final pulumi.Input<VirtualHardDisk>? vhd;
  /// Specifies whether writeAccelerator should be enabled or disabled on the disk.
  final pulumi.Input<bool>? writeAcceleratorEnabled;

  /// Creates a new [OSDisk].
  /// [caching] Specifies the caching requirements. Possible values are: None, ReadOnly, ReadWrite. The defaulting behavior is: None for Standard storage. ReadOnly for Premium storage.
  /// [createOption] Specifies how the virtual machine disk should be created. Possible values are Attach, FromImage. If you are using a platform image, you should also use the imageReference element described above. If you are using a marketplace image, you should also use the plan element previously described.
  /// [deleteOption] Specifies whether OS Disk should be deleted or detached upon VM deletion. Possible values are: Delete, Detach. The default value is set to Detach. For an ephemeral OS Disk, the default value is set to Delete. The user cannot change the delete option for an ephemeral OS Disk.
  /// [diffDiskSettings] Specifies the ephemeral Disk Settings for the operating system disk used by the virtual machine.
  /// [diskSizeGB] Specifies the size of an empty data disk in gigabytes. This element can be used to overwrite the size of the disk in a virtual machine image. The property 'diskSizeGB' is the number of bytes x 1024^3 for the disk and the value cannot be larger than 1023.
  /// [encryptionSettings] Specifies the encryption settings for the OS Disk. Minimum compute api-version: 2015-06-15.
  /// [image] The source user image virtual hard disk. The virtual hard disk will be copied before being attached to the virtual machine. If SourceImage is provided, the destination virtual hard drive must not exist.
  /// [managedDisk] The managed disk parameters.
  /// [name] The disk name.
  /// [osType] This property allows you to specify the type of the OS that is included in the disk if creating a VM from user-image or a specialized VHD. Possible values are: Windows, Linux.
  /// [vhd] The virtual hard disk.
  /// [writeAcceleratorEnabled] Specifies whether writeAccelerator should be enabled or disabled on the disk.
  const OSDisk({
    this.caching,
    required this.createOption,
    this.deleteOption,
    this.diffDiskSettings,
    this.diskSizeGB,
    this.encryptionSettings,
    this.image,
    this.managedDisk,
    this.name,
    this.osType,
    this.vhd,
    this.writeAcceleratorEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caching': ?caching,
      'createOption': createOption,
      'deleteOption': ?deleteOption,
      'diffDiskSettings': ?pulumi.Input.mapOptionalInputValue<DiffDiskSettings, Map<String, dynamic>>(diffDiskSettings, (value) => value.toMap()),
      'diskSizeGB': ?diskSizeGB,
      'encryptionSettings': ?pulumi.Input.mapOptionalInputValue<DiskEncryptionSettings, Map<String, dynamic>>(encryptionSettings, (value) => value.toMap()),
      'image': ?pulumi.Input.mapOptionalInputValue<VirtualHardDisk, Map<String, dynamic>>(image, (value) => value.toMap()),
      'managedDisk': ?pulumi.Input.mapOptionalInputValue<ManagedDiskParameters, Map<String, dynamic>>(managedDisk, (value) => value.toMap()),
      'name': ?name,
      'osType': ?osType,
      'vhd': ?pulumi.Input.mapOptionalInputValue<VirtualHardDisk, Map<String, dynamic>>(vhd, (value) => value.toMap()),
      'writeAcceleratorEnabled': ?writeAcceleratorEnabled,
    };
  }

  factory OSDisk.fromMap(Map<String, dynamic> map) {
    return OSDisk(
      caching: (() { final guardedValue = map['caching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createOption: pulumi.Input.fromValue(map['createOption'] as String),
      deleteOption: (() { final guardedValue = map['deleteOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diffDiskSettings: (() { final guardedValue = map['diffDiskSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiffDiskSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diskSizeGB: (() { final guardedValue = map['diskSizeGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      encryptionSettings: (() { final guardedValue = map['encryptionSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskEncryptionSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualHardDisk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managedDisk: (() { final guardedValue = map['managedDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedDiskParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vhd: (() { final guardedValue = map['vhd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualHardDisk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      writeAcceleratorEnabled: (() { final guardedValue = map['writeAcceleratorEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
