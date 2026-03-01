// ignore_for_file: unused_element, unnecessary_cast


/// The data disk of the VMSS.
class DataDisk {
  /// The type of caching to be enabled for the data disks. The default value for caching is readwrite. For information about the caching options see: https://blogs.msdn.microsoft.com/windowsazurestorage/2012/06/27/exploring-windows-azure-drives-disks-and-images/.
  final String? caching;
  /// The initial disk size in gigabytes.
  final int? diskSizeGiB;
  /// The drive letter for the empty data disk. If not specified, it will be the first available letter.
  final String? driveLetter;
  /// The storage Account type to be used for the data disk. If omitted, the default is "standard_lrs".
  final String? storageAccountType;

  /// Creates a new [DataDisk].
  /// [caching] The type of caching to be enabled for the data disks. The default value for caching is readwrite. For information about the caching options see: https://blogs.msdn.microsoft.com/windowsazurestorage/2012/06/27/exploring-windows-azure-drives-disks-and-images/.
  /// [diskSizeGiB] The initial disk size in gigabytes.
  /// [driveLetter] The drive letter for the empty data disk. If not specified, it will be the first available letter.
  /// [storageAccountType] The storage Account type to be used for the data disk. If omitted, the default is "standard_lrs".
  DataDisk({
    this.caching,
    this.diskSizeGiB,
    this.driveLetter,
    this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caching': ?caching,
      'diskSizeGiB': ?diskSizeGiB,
      'driveLetter': ?driveLetter,
      'storageAccountType': ?storageAccountType,
    };
  }

  factory DataDisk.fromMap(Map<String, dynamic> map) {
    return DataDisk(
      caching: map['caching'] == null ? null : map['caching'] as String,
      diskSizeGiB: map['diskSizeGiB'] == null ? null : map['diskSizeGiB'] as int,
      driveLetter: map['driveLetter'] == null ? null : map['driveLetter'] as String,
      storageAccountType: map['storageAccountType'] == null ? null : map['storageAccountType'] as String,
    );
  }
}

