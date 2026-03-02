// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HyperVToAzStackHCI protected disk properties.
class HyperVToAzStackHCIProtectedDiskPropertiesResponse {
  /// Gets or sets the disk capacity in bytes.
  final pulumi.Input<double> capacityInBytes;
  /// Gets or sets the disk type.
  final pulumi.Input<String> diskType;
  /// Gets or sets a value indicating whether dynamic sizing is enabled on the virtual hard
  /// disk.
  final pulumi.Input<bool> isDynamic;
  /// Gets or sets a value indicating whether the disk is the OS disk.
  final pulumi.Input<bool> isOsDisk;
  /// Gets or sets the failover clone disk.
  final pulumi.Input<String> migrateDiskName;
  /// Gets or sets the seed disk name.
  final pulumi.Input<String> seedDiskName;
  /// Gets or sets the source disk Id.
  final pulumi.Input<String> sourceDiskId;
  /// Gets or sets the source disk Name.
  final pulumi.Input<String> sourceDiskName;
  /// Gets or sets the ARM Id of the storage container.
  final pulumi.Input<String> storageContainerId;
  /// Gets or sets the local path of the storage container.
  final pulumi.Input<String> storageContainerLocalPath;
  /// Gets or sets the test failover clone disk.
  final pulumi.Input<String> testMigrateDiskName;

  /// Creates a new [HyperVToAzStackHCIProtectedDiskPropertiesResponse].
  /// [capacityInBytes] Gets or sets the disk capacity in bytes.
  /// [diskType] Gets or sets the disk type.
  /// [isDynamic] Gets or sets a value indicating whether dynamic sizing is enabled on the virtual hard
  /// [isOsDisk] Gets or sets a value indicating whether the disk is the OS disk.
  /// [migrateDiskName] Gets or sets the failover clone disk.
  /// [seedDiskName] Gets or sets the seed disk name.
  /// [sourceDiskId] Gets or sets the source disk Id.
  /// [sourceDiskName] Gets or sets the source disk Name.
  /// [storageContainerId] Gets or sets the ARM Id of the storage container.
  /// [storageContainerLocalPath] Gets or sets the local path of the storage container.
  /// [testMigrateDiskName] Gets or sets the test failover clone disk.
  HyperVToAzStackHCIProtectedDiskPropertiesResponse({
    required this.capacityInBytes,
    required this.diskType,
    required this.isDynamic,
    required this.isOsDisk,
    required this.migrateDiskName,
    required this.seedDiskName,
    required this.sourceDiskId,
    required this.sourceDiskName,
    required this.storageContainerId,
    required this.storageContainerLocalPath,
    required this.testMigrateDiskName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityInBytes': capacityInBytes,
      'diskType': diskType,
      'isDynamic': isDynamic,
      'isOsDisk': isOsDisk,
      'migrateDiskName': migrateDiskName,
      'seedDiskName': seedDiskName,
      'sourceDiskId': sourceDiskId,
      'sourceDiskName': sourceDiskName,
      'storageContainerId': storageContainerId,
      'storageContainerLocalPath': storageContainerLocalPath,
      'testMigrateDiskName': testMigrateDiskName,
    };
  }

  factory HyperVToAzStackHCIProtectedDiskPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HyperVToAzStackHCIProtectedDiskPropertiesResponse(
      capacityInBytes: (map['capacityInBytes'] as double).input(),
      diskType: (map['diskType'] as String).input(),
      isDynamic: (map['isDynamic'] as bool).input(),
      isOsDisk: (map['isOsDisk'] as bool).input(),
      migrateDiskName: (map['migrateDiskName'] as String).input(),
      seedDiskName: (map['seedDiskName'] as String).input(),
      sourceDiskId: (map['sourceDiskId'] as String).input(),
      sourceDiskName: (map['sourceDiskName'] as String).input(),
      storageContainerId: (map['storageContainerId'] as String).input(),
      storageContainerLocalPath: (map['storageContainerLocalPath'] as String).input(),
      testMigrateDiskName: (map['testMigrateDiskName'] as String).input(),
    );
  }
}

