// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_hard_disk.dart';

/// Specifies information about the operating system disk used by the virtual machine. &lt;br&gt;&lt;br&gt; For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-about-disks-vhds?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json).
class OsDisk {
  /// Specifies the size of os disk in gigabytes. This is the fully expanded disk size needed of the VHD image on the ASE. This disk size should be greater than the size of the VHD provided in vhdUri.
  final pulumi.Input<int>? diskSizeGB;
  /// The VHD name.
  final pulumi.Input<String>? name;
  /// The OS type.
  final pulumi.Input<String>? osType;
  /// The virtual hard disk.
  final pulumi.Input<VirtualHardDisk>? vhd;

  /// Creates a new [OsDisk].
  /// [diskSizeGB] Specifies the size of os disk in gigabytes. This is the fully expanded disk size needed of the VHD image on the ASE. This disk size should be greater than the size of the VHD provided in vhdUri.
  /// [name] The VHD name.
  /// [osType] The OS type.
  /// [vhd] The virtual hard disk.
  const OsDisk({
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
      'vhd': ?pulumi.Input.mapOptionalInputValue<VirtualHardDisk, Map<String, dynamic>>(vhd, (value) => value.toMap()),
    };
  }

  factory OsDisk.fromMap(Map<String, dynamic> map) {
    return OsDisk(
      diskSizeGB: (() { final guardedValue = map['diskSizeGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vhd: (() { final guardedValue = map['vhd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualHardDisk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
