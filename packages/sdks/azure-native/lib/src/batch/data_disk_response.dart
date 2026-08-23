// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings which will be used by the data disks associated to Compute Nodes in the Pool. When using attached data disks, you need to mount and format the disks from within a VM to use them.
class DataDiskResponse {
  /// Values are:
  ///
  /// none - The caching mode for the disk is not enabled.
  /// readOnly - The caching mode for the disk is read only.
  /// readWrite - The caching mode for the disk is read and write.
  ///
  /// The default value for caching is none. For information about the caching options see: https://blogs.msdn.microsoft.com/windowsazurestorage/2012/06/27/exploring-windows-azure-drives-disks-and-images/.
  final pulumi.Input<String>? caching;
  /// The initial disk size in GB when creating new data disk.
  final pulumi.Input<int> diskSizeGB;
  /// The lun is used to uniquely identify each data disk. If attaching multiple disks, each should have a distinct lun. The value must be between 0 and 63, inclusive.
  final pulumi.Input<int> lun;
  /// If omitted, the default is "Standard_LRS". Values are:
  ///
  /// Standard_LRS - The data disk should use standard locally redundant storage.
  /// Premium_LRS - The data disk should use premium locally redundant storage.
  final pulumi.Input<String>? storageAccountType;

  /// Creates a new [DataDiskResponse].
  /// [caching] Values are:
  /// [diskSizeGB] The initial disk size in GB when creating new data disk.
  /// [lun] The lun is used to uniquely identify each data disk. If attaching multiple disks, each should have a distinct lun. The value must be between 0 and 63, inclusive.
  /// [storageAccountType] If omitted, the default is "Standard_LRS". Values are:
  const DataDiskResponse({
    this.caching,
    required this.diskSizeGB,
    required this.lun,
    this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caching': ?caching,
      'diskSizeGB': diskSizeGB,
      'lun': lun,
      'storageAccountType': ?storageAccountType,
    };
  }

  factory DataDiskResponse.fromMap(Map<String, dynamic> map) {
    return DataDiskResponse(
      caching: (() { final guardedValue = map['caching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskSizeGB: pulumi.Input.fromValue(map['diskSizeGB'] as int),
      lun: pulumi.Input.fromValue(map['lun'] as int),
      storageAccountType: (() { final guardedValue = map['storageAccountType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
