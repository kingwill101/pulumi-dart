// ignore_for_file: unused_element, unnecessary_cast

class StoragePoolStatus {
  /// (Output)
  /// Number of disks used.
  final String? diskCount;

  /// (Output)
  /// Timestamp of the last successful resize in RFC3339 text format.
  final String? lastResizeTimestamp;

  /// (Output)
  /// Maximum allowed aggregate disk size in gigabytes.
  final String? maxTotalProvisionedDiskCapacityGb;

  /// (Output)
  /// Space used by data stored in disks within the storage pool (in bytes).
  /// This will reflect the total number of bytes written to the disks in the pool, in contrast to the capacity of those disks.
  final String? poolUsedCapacityBytes;

  /// (Output)
  /// Sum of all the disks' provisioned IOPS, minus some amount that is allowed per disk that is not counted towards pool's IOPS capacity. For more information, see https://cloud.google.com/compute/docs/disks/storage-pools.
  final String? poolUsedIops;

  /// (Output)
  /// Sum of all the disks' provisioned throughput in MB/s.
  final String? poolUsedThroughput;

  /// (Output)
  /// Amount of data written into the pool, before it is compacted.
  final String? poolUserWrittenBytes;

  /// (Output)
  /// Sum of all the capacity provisioned in disks in this storage pool.
  /// A disk's provisioned capacity is the same as its total capacity.
  final String? totalProvisionedDiskCapacityGb;

  /// (Output)
  /// Sum of all the disks' provisioned IOPS.
  final String? totalProvisionedDiskIops;

  /// (Output)
  /// Sum of all the disks' provisioned throughput in MB/s,
  /// minus some amount that is allowed per disk that is not counted towards pool's throughput capacity.
  final String? totalProvisionedDiskThroughput;

  StoragePoolStatus({
    this.diskCount,
    this.lastResizeTimestamp,
    this.maxTotalProvisionedDiskCapacityGb,
    this.poolUsedCapacityBytes,
    this.poolUsedIops,
    this.poolUsedThroughput,
    this.poolUserWrittenBytes,
    this.totalProvisionedDiskCapacityGb,
    this.totalProvisionedDiskIops,
    this.totalProvisionedDiskThroughput,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final diskCountValue = diskCount;
    if (diskCountValue != null) {
      map['diskCount'] = diskCountValue;
    }
    final lastResizeTimestampValue = lastResizeTimestamp;
    if (lastResizeTimestampValue != null) {
      map['lastResizeTimestamp'] = lastResizeTimestampValue;
    }
    final maxTotalProvisionedDiskCapacityGbValue =
        maxTotalProvisionedDiskCapacityGb;
    if (maxTotalProvisionedDiskCapacityGbValue != null) {
      map['maxTotalProvisionedDiskCapacityGb'] =
          maxTotalProvisionedDiskCapacityGbValue;
    }
    final poolUsedCapacityBytesValue = poolUsedCapacityBytes;
    if (poolUsedCapacityBytesValue != null) {
      map['poolUsedCapacityBytes'] = poolUsedCapacityBytesValue;
    }
    final poolUsedIopsValue = poolUsedIops;
    if (poolUsedIopsValue != null) {
      map['poolUsedIops'] = poolUsedIopsValue;
    }
    final poolUsedThroughputValue = poolUsedThroughput;
    if (poolUsedThroughputValue != null) {
      map['poolUsedThroughput'] = poolUsedThroughputValue;
    }
    final poolUserWrittenBytesValue = poolUserWrittenBytes;
    if (poolUserWrittenBytesValue != null) {
      map['poolUserWrittenBytes'] = poolUserWrittenBytesValue;
    }
    final totalProvisionedDiskCapacityGbValue = totalProvisionedDiskCapacityGb;
    if (totalProvisionedDiskCapacityGbValue != null) {
      map['totalProvisionedDiskCapacityGb'] =
          totalProvisionedDiskCapacityGbValue;
    }
    final totalProvisionedDiskIopsValue = totalProvisionedDiskIops;
    if (totalProvisionedDiskIopsValue != null) {
      map['totalProvisionedDiskIops'] = totalProvisionedDiskIopsValue;
    }
    final totalProvisionedDiskThroughputValue = totalProvisionedDiskThroughput;
    if (totalProvisionedDiskThroughputValue != null) {
      map['totalProvisionedDiskThroughput'] =
          totalProvisionedDiskThroughputValue;
    }
    return map;
  }

  factory StoragePoolStatus.fromMap(Map<String, dynamic> map) {
    return StoragePoolStatus(
      diskCount: map['diskCount'] == null ? null : map['diskCount'] as String,
      lastResizeTimestamp: map['lastResizeTimestamp'] == null
          ? null
          : map['lastResizeTimestamp'] as String,
      maxTotalProvisionedDiskCapacityGb:
          map['maxTotalProvisionedDiskCapacityGb'] == null
              ? null
              : map['maxTotalProvisionedDiskCapacityGb'] as String,
      poolUsedCapacityBytes: map['poolUsedCapacityBytes'] == null
          ? null
          : map['poolUsedCapacityBytes'] as String,
      poolUsedIops:
          map['poolUsedIops'] == null ? null : map['poolUsedIops'] as String,
      poolUsedThroughput: map['poolUsedThroughput'] == null
          ? null
          : map['poolUsedThroughput'] as String,
      poolUserWrittenBytes: map['poolUserWrittenBytes'] == null
          ? null
          : map['poolUserWrittenBytes'] as String,
      totalProvisionedDiskCapacityGb:
          map['totalProvisionedDiskCapacityGb'] == null
              ? null
              : map['totalProvisionedDiskCapacityGb'] as String,
      totalProvisionedDiskIops: map['totalProvisionedDiskIops'] == null
          ? null
          : map['totalProvisionedDiskIops'] as String,
      totalProvisionedDiskThroughput:
          map['totalProvisionedDiskThroughput'] == null
              ? null
              : map['totalProvisionedDiskThroughput'] as String,
    );
  }
}
