// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The data disk of the VMSS.
class DataDiskResponse {
  /// The type of caching to be enabled for the data disks. The default value for caching is readwrite. For information about the caching options see: https://blogs.msdn.microsoft.com/windowsazurestorage/2012/06/27/exploring-windows-azure-drives-disks-and-images/.
  final pulumi.Input<String>? caching;
  /// The initial disk size in gigabytes.
  final pulumi.Input<int>? diskSizeGiB;
  /// The drive letter for the empty data disk. If not specified, it will be the first available letter.
  final pulumi.Input<String>? driveLetter;
  /// The storage Account type to be used for the data disk. If omitted, the default is "standard_lrs".
  final pulumi.Input<String>? storageAccountType;

  /// Creates a new [DataDiskResponse].
  /// [caching] The type of caching to be enabled for the data disks. The default value for caching is readwrite. For information about the caching options see: https://blogs.msdn.microsoft.com/windowsazurestorage/2012/06/27/exploring-windows-azure-drives-disks-and-images/.
  /// [diskSizeGiB] The initial disk size in gigabytes.
  /// [driveLetter] The drive letter for the empty data disk. If not specified, it will be the first available letter.
  /// [storageAccountType] The storage Account type to be used for the data disk. If omitted, the default is "standard_lrs".
  const DataDiskResponse({
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

  factory DataDiskResponse.fromMap(Map<String, dynamic> map) {
    return DataDiskResponse(
      caching: (() { final guardedValue = map['caching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskSizeGiB: (() { final guardedValue = map['diskSizeGiB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      driveLetter: (() { final guardedValue = map['driveLetter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountType: (() { final guardedValue = map['storageAccountType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
