// ignore_for_file: unused_element, unnecessary_cast


class StarRocksInstanceObserverNodeGroup {
  /// Number of CUs. CU (Compute Unit) is the basic measurement unit of the service, where 1 CU = 1 CPU core + 4 GiB memory.
  final int? cu;
  /// DiskNumber
  final int? diskNumber;
  /// Local SSD instance specifications.
  final String? localStorageInstanceType;
  /// Resident node number of node group.
  final int? residentNodeNumber;
  /// Compute group specification types include the following:
  /// - standard
  final String? specType;
  /// Performance levels of cloud disks include the following values:
  /// - pl0: Maximum random read/write IOPS per disk is 10,000.
  /// - pl1: Maximum random read/write IOPS per disk is 50,000.
  /// - pl2: Maximum random read/write IOPS per disk is 100,000.
  /// - pl3: Maximum random read/write IOPS per disk is 1,000,000.
  final String? storagePerformanceLevel;
  /// Storage size, measured in GiB.
  final int? storageSize;
  /// Zone ID.
  final String? zoneId;

  /// Creates a new [StarRocksInstanceObserverNodeGroup].
  /// [cu] Number of CUs. CU (Compute Unit) is the basic measurement unit of the service, where 1 CU = 1 CPU core + 4 GiB memory.
  /// [diskNumber] DiskNumber
  /// [localStorageInstanceType] Local SSD instance specifications.
  /// [residentNodeNumber] Resident node number of node group.
  /// [specType] Compute group specification types include the following:
  /// [storagePerformanceLevel] Performance levels of cloud disks include the following values:
  /// [storageSize] Storage size, measured in GiB.
  /// [zoneId] Zone ID.
  StarRocksInstanceObserverNodeGroup({
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

  factory StarRocksInstanceObserverNodeGroup.fromMap(Map<String, dynamic> map) {
    return StarRocksInstanceObserverNodeGroup(
      cu: map['cu'] == null ? null : map['cu'] as int,
      diskNumber: map['diskNumber'] == null ? null : map['diskNumber'] as int,
      localStorageInstanceType: map['localStorageInstanceType'] == null ? null : map['localStorageInstanceType'] as String,
      residentNodeNumber: map['residentNodeNumber'] == null ? null : map['residentNodeNumber'] as int,
      specType: map['specType'] == null ? null : map['specType'] as String,
      storagePerformanceLevel: map['storagePerformanceLevel'] == null ? null : map['storagePerformanceLevel'] as String,
      storageSize: map['storageSize'] == null ? null : map['storageSize'] as int,
      zoneId: map['zoneId'] == null ? null : map['zoneId'] as String,
    );
  }
}

