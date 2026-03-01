// ignore_for_file: unused_element, unnecessary_cast


/// Specifies information about the operating system disk used by the virtual machine. <br><br> For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-about-disks-vhds?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json).
class DataDisk {
  /// Specifies how the virtual machine should be created.
  final String? createOption;
  /// Specifies the size of an empty disk in gigabytes. This element can be used to overwrite the size of the disk in a virtual machine image.
  final int? diskSizeGB;
  /// The name of data disk.
  final String? name;

  /// Creates a new [DataDisk].
  /// [createOption] Specifies how the virtual machine should be created.
  /// [diskSizeGB] Specifies the size of an empty disk in gigabytes. This element can be used to overwrite the size of the disk in a virtual machine image.
  /// [name] The name of data disk.
  DataDisk({
    this.createOption,
    this.diskSizeGB,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createOption': ?createOption,
      'diskSizeGB': ?diskSizeGB,
      'name': ?name,
    };
  }

  factory DataDisk.fromMap(Map<String, dynamic> map) {
    return DataDisk(
      createOption: map['createOption'] == null ? null : map['createOption'] as String,
      diskSizeGB: map['diskSizeGB'] == null ? null : map['diskSizeGB'] as int,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

