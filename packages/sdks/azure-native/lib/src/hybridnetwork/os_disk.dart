// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_hard_disk.dart';

/// Specifies information about the operating system disk used by the virtual machine. <br><br> For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-about-disks-vhds?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json).
class OsDisk {
  /// Specifies the size of os disk in gigabytes. This is the fully expanded disk size needed of the VHD image on the ASE. This disk size should be greater than the size of the VHD provided in vhdUri.
  final int? diskSizeGB;
  /// The VHD name.
  final String? name;
  /// The OS type.
  final String? osType;
  /// The virtual hard disk.
  final VirtualHardDisk? vhd;

  /// Creates a new [OsDisk].
  /// [diskSizeGB] Specifies the size of os disk in gigabytes. This is the fully expanded disk size needed of the VHD image on the ASE. This disk size should be greater than the size of the VHD provided in vhdUri.
  /// [name] The VHD name.
  /// [osType] The OS type.
  /// [vhd] The virtual hard disk.
  OsDisk({
    this.diskSizeGB,
    this.name,
    this.osType,
    this.vhd,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGB': ?diskSizeGB,
      'name': ?name,
      'osType': ?osType,
      'vhd': ?vhd == null ? null : vhd!.toMap(),
    };
  }

  factory OsDisk.fromMap(Map<String, dynamic> map) {
    return OsDisk(
      diskSizeGB: map['diskSizeGB'] == null ? null : map['diskSizeGB'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      osType: map['osType'] == null ? null : map['osType'] as String,
      vhd: map['vhd'] == null ? null : VirtualHardDisk.fromMap((map['vhd'] as Map).cast<String, dynamic>()),
    );
  }
}

