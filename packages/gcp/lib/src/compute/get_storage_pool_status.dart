// ignore_for_file: unused_element, unnecessary_cast

class GetStoragePoolStatus {
  /// Number of disks used.
  final String diskCount;

  /// Timestamp of the last successful resize in RFC3339 text format.
  final String lastResizeTimestamp;

  /// Maximum allowed aggregate disk size in gigabytes.
  final String maxTotalProvisionedDiskCapacityGb;

  /// Space used by data stored in disks within the storage pool (in bytes).
  /// This will reflect the total number of bytes written to the disks in the pool, in contrast to the capacity of those disks.
  final String poolUsedCapacityBytes;

  /// Sum of all the disks' provisioned IOPS, minus some amount that is allowed per disk that is not counted towards pool's IOPS capacity. For more information, see https://cloud.google.com/compute/docs/disks/storage-pools.
  final String poolUsedIops;

  /// Sum of all the disks' provisioned throughput in MB/s.
  final String poolUsedThroughput;

  /// Amount of data written into the pool, before it is compacted.
  final String poolUserWrittenBytes;

  /// Sum of all the capacity provisioned in disks in this storage pool.
  /// A disk's provisioned capacity is the same as its total capacity.
  final String totalProvisionedDiskCapacityGb;

  /// Sum of all the disks' provisioned IOPS.
  final String totalProvisionedDiskIops;

  /// Sum of all the disks' provisioned throughput in MB/s,
  /// minus some amount that is allowed per disk that is not counted towards pool's throughput capacity.
  final String totalProvisionedDiskThroughput;

  /// Creates a new [GetStoragePoolStatus].
  /// [diskCount] Number of disks used.
  /// [lastResizeTimestamp] Timestamp of the last successful resize in RFC3339 text format.
  /// [maxTotalProvisionedDiskCapacityGb] Maximum allowed aggregate disk size in gigabytes.
  /// [poolUsedCapacityBytes] Space used by data stored in disks within the storage pool (in bytes).
  /// [poolUsedIops] Sum of all the disks' provisioned IOPS, minus some amount that is allowed per disk that is not counted towards pool's IOPS capacity. For more information, see https://cloud.google.com/compute/docs/disks/storage-pools.
  /// [poolUsedThroughput] Sum of all the disks' provisioned throughput in MB/s.
  /// [poolUserWrittenBytes] Amount of data written into the pool, before it is compacted.
  /// [totalProvisionedDiskCapacityGb] Sum of all the capacity provisioned in disks in this storage pool.
  /// [totalProvisionedDiskIops] Sum of all the disks' provisioned IOPS.
  /// [totalProvisionedDiskThroughput] Sum of all the disks' provisioned throughput in MB/s,
  GetStoragePoolStatus({
    required this.diskCount,
    required this.lastResizeTimestamp,
    required this.maxTotalProvisionedDiskCapacityGb,
    required this.poolUsedCapacityBytes,
    required this.poolUsedIops,
    required this.poolUsedThroughput,
    required this.poolUserWrittenBytes,
    required this.totalProvisionedDiskCapacityGb,
    required this.totalProvisionedDiskIops,
    required this.totalProvisionedDiskThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskCount': diskCount,
      'lastResizeTimestamp': lastResizeTimestamp,
      'maxTotalProvisionedDiskCapacityGb': maxTotalProvisionedDiskCapacityGb,
      'poolUsedCapacityBytes': poolUsedCapacityBytes,
      'poolUsedIops': poolUsedIops,
      'poolUsedThroughput': poolUsedThroughput,
      'poolUserWrittenBytes': poolUserWrittenBytes,
      'totalProvisionedDiskCapacityGb': totalProvisionedDiskCapacityGb,
      'totalProvisionedDiskIops': totalProvisionedDiskIops,
      'totalProvisionedDiskThroughput': totalProvisionedDiskThroughput,
    };
  }

  factory GetStoragePoolStatus.fromMap(Map<String, dynamic> map) {
    return GetStoragePoolStatus(
      diskCount: map['diskCount'] as String,
      lastResizeTimestamp: map['lastResizeTimestamp'] as String,
      maxTotalProvisionedDiskCapacityGb:
          map['maxTotalProvisionedDiskCapacityGb'] as String,
      poolUsedCapacityBytes: map['poolUsedCapacityBytes'] as String,
      poolUsedIops: map['poolUsedIops'] as String,
      poolUsedThroughput: map['poolUsedThroughput'] as String,
      poolUserWrittenBytes: map['poolUserWrittenBytes'] as String,
      totalProvisionedDiskCapacityGb:
          map['totalProvisionedDiskCapacityGb'] as String,
      totalProvisionedDiskIops: map['totalProvisionedDiskIops'] as String,
      totalProvisionedDiskThroughput:
          map['totalProvisionedDiskThroughput'] as String,
    );
  }
}
