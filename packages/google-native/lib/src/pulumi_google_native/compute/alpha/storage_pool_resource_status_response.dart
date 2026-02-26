// ignore_for_file: unused_element, unnecessary_cast

/// [Output Only] Contains output only fields.
class StoragePoolResourceStatusResponse {
  /// Sum of all the disks' provisioned IOPS.
  final String aggregateDiskProvisionedIops;

  /// Sum of all the capacity provisioned in disks in this storage pool. A disk's provisioned capacity is the same as its total capacity.
  final String aggregateDiskSizeGb;

  /// Timestamp of the last successful resize in RFC3339 text format.
  final String lastResizeTimestamp;

  /// Maximum allowed aggregate disk size in gigabytes.
  final String maxAggregateDiskSizeGb;

  /// Number of disks used.
  final String numberOfDisks;

  /// Space used by data stored in disks within the storage pool (in bytes).
  final String usedBytes;

  /// Space used by compressed and deduped data stored in disks within the storage pool (in bytes).
  final String usedReducedBytes;

  /// Sum of all the disks' provisioned throughput in MB/s.
  final String usedThroughput;

  StoragePoolResourceStatusResponse({
    required this.aggregateDiskProvisionedIops,
    required this.aggregateDiskSizeGb,
    required this.lastResizeTimestamp,
    required this.maxAggregateDiskSizeGb,
    required this.numberOfDisks,
    required this.usedBytes,
    required this.usedReducedBytes,
    required this.usedThroughput,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['aggregateDiskProvisionedIops'] = aggregateDiskProvisionedIops;
    map['aggregateDiskSizeGb'] = aggregateDiskSizeGb;
    map['lastResizeTimestamp'] = lastResizeTimestamp;
    map['maxAggregateDiskSizeGb'] = maxAggregateDiskSizeGb;
    map['numberOfDisks'] = numberOfDisks;
    map['usedBytes'] = usedBytes;
    map['usedReducedBytes'] = usedReducedBytes;
    map['usedThroughput'] = usedThroughput;
    return map;
  }

  factory StoragePoolResourceStatusResponse.fromMap(Map<String, dynamic> map) {
    return StoragePoolResourceStatusResponse(
      aggregateDiskProvisionedIops:
          map['aggregateDiskProvisionedIops'] as String,
      aggregateDiskSizeGb: map['aggregateDiskSizeGb'] as String,
      lastResizeTimestamp: map['lastResizeTimestamp'] as String,
      maxAggregateDiskSizeGb: map['maxAggregateDiskSizeGb'] as String,
      numberOfDisks: map['numberOfDisks'] as String,
      usedBytes: map['usedBytes'] as String,
      usedReducedBytes: map['usedReducedBytes'] as String,
      usedThroughput: map['usedThroughput'] as String,
    );
  }
}
