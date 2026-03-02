// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StarRocksInstanceFrontendNodeGroup {
  /// Number of CUs. CU (Compute Unit) is the basic measurement unit of the service, where 1 CU = 1 CPU core + 4 GiB memory.
  final pulumi.Input<int>? cu;
  /// DiskNumber
  final pulumi.Input<int>? diskNumber;
  /// Local SSD instance specifications.
  final pulumi.Input<String>? localStorageInstanceType;
  /// Resident node number of node group.
  final pulumi.Input<int>? residentNodeNumber;
  /// Compute group specification types include the following:
  /// - standard
  /// - ramEnhanced
  final pulumi.Input<String>? specType;
  /// Performance levels of cloud disks include the following values:
  /// - pl0: Maximum random read/write IOPS per disk is 10,000.
  /// - pl1: Maximum random read/write IOPS per disk is 50,000.
  /// - pl2: Maximum random read/write IOPS per disk is 100,000.
  /// - pl3: Maximum random read/write IOPS per disk is 1,000,000.
  final pulumi.Input<String>? storagePerformanceLevel;
  /// Storage size, measured in GiB.
  final pulumi.Input<int>? storageSize;
  /// Zone ID.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [StarRocksInstanceFrontendNodeGroup].
  /// [cu] Number of CUs. CU (Compute Unit) is the basic measurement unit of the service, where 1 CU = 1 CPU core + 4 GiB memory.
  /// [diskNumber] DiskNumber
  /// [localStorageInstanceType] Local SSD instance specifications.
  /// [residentNodeNumber] Resident node number of node group.
  /// [specType] Compute group specification types include the following:
  /// [storagePerformanceLevel] Performance levels of cloud disks include the following values:
  /// [storageSize] Storage size, measured in GiB.
  /// [zoneId] Zone ID.
  StarRocksInstanceFrontendNodeGroup({
    this.cu,
    this.diskNumber,
    this.localStorageInstanceType,
    this.residentNodeNumber,
    this.specType,
    this.storagePerformanceLevel,
    this.storageSize,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cu': ?cu,
      'diskNumber': ?diskNumber,
      'localStorageInstanceType': ?localStorageInstanceType,
      'residentNodeNumber': ?residentNodeNumber,
      'specType': ?specType,
      'storagePerformanceLevel': ?storagePerformanceLevel,
      'storageSize': ?storageSize,
      'zoneId': ?zoneId,
    };
  }

  factory StarRocksInstanceFrontendNodeGroup.fromMap(Map<String, dynamic> map) {
    return StarRocksInstanceFrontendNodeGroup(
      cu: map['cu'] == null ? null : (map['cu']! as int).input(),
      diskNumber: map['diskNumber'] == null ? null : (map['diskNumber']! as int).input(),
      localStorageInstanceType: map['localStorageInstanceType'] == null ? null : (map['localStorageInstanceType']! as String).input(),
      residentNodeNumber: map['residentNodeNumber'] == null ? null : (map['residentNodeNumber']! as int).input(),
      specType: map['specType'] == null ? null : (map['specType']! as String).input(),
      storagePerformanceLevel: map['storagePerformanceLevel'] == null ? null : (map['storagePerformanceLevel']! as String).input(),
      storageSize: map['storageSize'] == null ? null : (map['storageSize']! as int).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId']! as String).input(),
    );
  }
}

