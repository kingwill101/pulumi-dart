// ignore_for_file: unused_element, unnecessary_cast


/// Specifies information about the operating system disk used by the virtual machine. <br><br> For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-about-disks-vhds?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json).
class OsDiskResponse {
  /// Specifies the size of os disk in gigabytes. This is the fully expanded disk size needed of the VHD image on the ASE. This disk size should be greater than the size of the VHD provided in vhdUri.
  final int? diskSizeGB;
  /// The VHD name.
  final String? name;
  /// The OS type.
  final String? osType;

  /// Creates a new [OsDiskResponse].
  /// [diskSizeGB] Specifies the size of os disk in gigabytes. This is the fully expanded disk size needed of the VHD image on the ASE. This disk size should be greater than the size of the VHD provided in vhdUri.
  /// [name] The VHD name.
  /// [osType] The OS type.
  OsDiskResponse({
    this.diskSizeGB,
    this.name,
    this.osType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGB': ?diskSizeGB,
      'name': ?name,
      'osType': ?osType,
    };
  }

  factory OsDiskResponse.fromMap(Map<String, dynamic> map) {
    return OsDiskResponse(
      diskSizeGB: map['diskSizeGB'] == null ? null : map['diskSizeGB'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      osType: map['osType'] == null ? null : map['osType'] as String,
    );
  }
}

