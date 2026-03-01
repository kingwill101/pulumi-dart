// ignore_for_file: unused_element, unnecessary_cast

import 'diff_disk_settings_response.dart';
import 'disk_encryption_settings_response.dart';
import 'managed_disk_parameters_response.dart';
import 'virtual_hard_disk_response.dart';

/// Specifies information about the operating system disk used by the virtual machine. For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/managed-disks-overview).
class OSDiskResponse {
  /// Specifies the caching requirements. Possible values are: **None,** **ReadOnly,** **ReadWrite.** The defaulting behavior is: **None for Standard storage. ReadOnly for Premium storage.**
  final String? caching;
  /// Specifies how the virtual machine disk should be created. Possible values are **Attach:** This value is used when you are using a specialized disk to create the virtual machine. **FromImage:** This value is used when you are using an image to create the virtual machine. If you are using a platform image, you should also use the imageReference element described above. If you are using a marketplace image, you should also use the plan element previously described.
  final String createOption;
  /// Specifies whether OS Disk should be deleted or detached upon VM deletion. Possible values are: **Delete.** If this value is used, the OS disk is deleted when VM is deleted. **Detach.** If this value is used, the os disk is retained after VM is deleted. The default value is set to **Detach**. For an ephemeral OS Disk, the default value is set to **Delete**. The user cannot change the delete option for an ephemeral OS Disk.
  final String? deleteOption;
  /// Specifies the ephemeral Disk Settings for the operating system disk used by the virtual machine.
  final DiffDiskSettingsResponse? diffDiskSettings;
  /// Specifies the size of an empty data disk in gigabytes. This element can be used to overwrite the size of the disk in a virtual machine image. The property 'diskSizeGB' is the number of bytes x 1024^3 for the disk and the value cannot be larger than 1023.
  final int? diskSizeGB;
  /// Specifies the encryption settings for the OS Disk. Minimum api-version: 2015-06-15.
  final DiskEncryptionSettingsResponse? encryptionSettings;
  /// The source user image virtual hard disk. The virtual hard disk will be copied before being attached to the virtual machine. If SourceImage is provided, the destination virtual hard drive must not exist.
  final VirtualHardDiskResponse? image;
  /// The managed disk parameters.
  final ManagedDiskParametersResponse? managedDisk;
  /// The disk name.
  final String? name;
  /// This property allows you to specify the type of the OS that is included in the disk if creating a VM from user-image or a specialized VHD. Possible values are: **Windows,** **Linux.**
  final String? osType;
  /// The virtual hard disk.
  final VirtualHardDiskResponse? vhd;
  /// Specifies whether writeAccelerator should be enabled or disabled on the disk.
  final bool? writeAcceleratorEnabled;

  /// Creates a new [OSDiskResponse].
  /// [caching] Specifies the caching requirements. Possible values are: **None,** **ReadOnly,** **ReadWrite.** The defaulting behavior is: **None for Standard storage. ReadOnly for Premium storage.**
  /// [createOption] Specifies how the virtual machine disk should be created. Possible values are **Attach:** This value is used when you are using a specialized disk to create the virtual machine. **FromImage:** This value is used when you are using an image to create the virtual machine. If you are using a platform image, you should also use the imageReference element described above. If you are using a marketplace image, you should also use the plan element previously described.
  /// [deleteOption] Specifies whether OS Disk should be deleted or detached upon VM deletion. Possible values are: **Delete.** If this value is used, the OS disk is deleted when VM is deleted. **Detach.** If this value is used, the os disk is retained after VM is deleted. The default value is set to **Detach**. For an ephemeral OS Disk, the default value is set to **Delete**. The user cannot change the delete option for an ephemeral OS Disk.
  /// [diffDiskSettings] Specifies the ephemeral Disk Settings for the operating system disk used by the virtual machine.
  /// [diskSizeGB] Specifies the size of an empty data disk in gigabytes. This element can be used to overwrite the size of the disk in a virtual machine image. The property 'diskSizeGB' is the number of bytes x 1024^3 for the disk and the value cannot be larger than 1023.
  /// [encryptionSettings] Specifies the encryption settings for the OS Disk. Minimum api-version: 2015-06-15.
  /// [image] The source user image virtual hard disk. The virtual hard disk will be copied before being attached to the virtual machine. If SourceImage is provided, the destination virtual hard drive must not exist.
  /// [managedDisk] The managed disk parameters.
  /// [name] The disk name.
  /// [osType] This property allows you to specify the type of the OS that is included in the disk if creating a VM from user-image or a specialized VHD. Possible values are: **Windows,** **Linux.**
  /// [vhd] The virtual hard disk.
  /// [writeAcceleratorEnabled] Specifies whether writeAccelerator should be enabled or disabled on the disk.
  OSDiskResponse({
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
      'diffDiskSettings': ?diffDiskSettings == null ? null : diffDiskSettings!.toMap(),
      'diskSizeGB': ?diskSizeGB,
      'encryptionSettings': ?encryptionSettings == null ? null : encryptionSettings!.toMap(),
      'image': ?image == null ? null : image!.toMap(),
      'managedDisk': ?managedDisk == null ? null : managedDisk!.toMap(),
      'name': ?name,
      'osType': ?osType,
      'vhd': ?vhd == null ? null : vhd!.toMap(),
      'writeAcceleratorEnabled': ?writeAcceleratorEnabled,
    };
  }

  factory OSDiskResponse.fromMap(Map<String, dynamic> map) {
    return OSDiskResponse(
      caching: map['caching'] == null ? null : map['caching'] as String,
      createOption: map['createOption'] as String,
      deleteOption: map['deleteOption'] == null ? null : map['deleteOption'] as String,
      diffDiskSettings: map['diffDiskSettings'] == null ? null : DiffDiskSettingsResponse.fromMap((map['diffDiskSettings'] as Map).cast<String, dynamic>()),
      diskSizeGB: map['diskSizeGB'] == null ? null : map['diskSizeGB'] as int,
      encryptionSettings: map['encryptionSettings'] == null ? null : DiskEncryptionSettingsResponse.fromMap((map['encryptionSettings'] as Map).cast<String, dynamic>()),
      image: map['image'] == null ? null : VirtualHardDiskResponse.fromMap((map['image'] as Map).cast<String, dynamic>()),
      managedDisk: map['managedDisk'] == null ? null : ManagedDiskParametersResponse.fromMap((map['managedDisk'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      osType: map['osType'] == null ? null : map['osType'] as String,
      vhd: map['vhd'] == null ? null : VirtualHardDiskResponse.fromMap((map['vhd'] as Map).cast<String, dynamic>()),
      writeAcceleratorEnabled: map['writeAcceleratorEnabled'] == null ? null : map['writeAcceleratorEnabled'] as bool,
    );
  }
}

