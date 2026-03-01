// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the disk information fo the Azure Large Instance
class DiskResponse {
  /// Specifies the size of an empty data disk in gigabytes.
  final int? diskSizeGB;
  /// Specifies the logical unit number of the data disk. This value is used to
  /// identify data disks within the VM and therefore must be unique for each data
  /// disk attached to a VM.
  final int lun;
  /// The disk name.
  final String? name;

  /// Creates a new [DiskResponse].
  /// [diskSizeGB] Specifies the size of an empty data disk in gigabytes.
  /// [lun] Specifies the logical unit number of the data disk. This value is used to
  /// [name] The disk name.
  DiskResponse({
    this.diskSizeGB,
    required this.lun,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGB': ?diskSizeGB,
      'lun': lun,
      'name': ?name,
    };
  }

  factory DiskResponse.fromMap(Map<String, dynamic> map) {
    return DiskResponse(
      diskSizeGB: map['diskSizeGB'] == null ? null : map['diskSizeGB'] as int,
      lun: map['lun'] as int,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

