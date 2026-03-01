// ignore_for_file: unused_element, unnecessary_cast


class AmiFromInstanceEbsBlockDevice {
  /// Boolean controlling whether the EBS volumes created to
  /// support each created instance will be deleted once that instance is terminated.
  final bool? deleteOnTermination;
  /// Path at which the device is exposed to created instances.
  final String? deviceName;
  /// Boolean controlling whether the created EBS volumes will be encrypted. Can't be used with `snapshot_id`.
  final bool? encrypted;
  /// Number of I/O operations per second the
  /// created volumes will support.
  final int? iops;
  /// ARN of the Outpost on which the snapshot is stored.
  ///
  /// > **Note:** You can specify `encrypted` or `snapshot_id` but not both.
  final String? outpostArn;
  /// ID of an EBS snapshot that will be used to initialize the created
  /// EBS volumes. If set, the `volume_size` attribute must be at least as large as the referenced
  /// snapshot.
  final String? snapshotId;
  /// Throughput that the EBS volume supports, in MiB/s. Only valid for `volume_type` of `gp3`.
  final int? throughput;
  /// Size of created volumes in GiB.
  /// If `snapshot_id` is set and `volume_size` is omitted then the volume will have the same size
  /// as the selected snapshot.
  final int? volumeSize;
  /// Type of EBS volume to create. Can be `standard`, `gp2`, `gp3`, `io1`, `io2`, `sc1` or `st1` (Default: `standard`).
  final String? volumeType;

  /// Creates a new [AmiFromInstanceEbsBlockDevice].
  /// [deleteOnTermination] Boolean controlling whether the EBS volumes created to
  /// [deviceName] Path at which the device is exposed to created instances.
  /// [encrypted] Boolean controlling whether the created EBS volumes will be encrypted. Can't be used with `snapshot_id`.
  /// [iops] Number of I/O operations per second the
  /// [outpostArn] ARN of the Outpost on which the snapshot is stored.
  /// [snapshotId] ID of an EBS snapshot that will be used to initialize the created
  /// [throughput] Throughput that the EBS volume supports, in MiB/s. Only valid for `volume_type` of `gp3`.
  /// [volumeSize] Size of created volumes in GiB.
  /// [volumeType] Type of EBS volume to create. Can be `standard`, `gp2`, `gp3`, `io1`, `io2`, `sc1` or `st1` (Default: `standard`).
  AmiFromInstanceEbsBlockDevice({
    this.deleteOnTermination,
    this.deviceName,
    this.encrypted,
    this.iops,
    this.outpostArn,
    this.snapshotId,
    this.throughput,
    this.volumeSize,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteOnTermination': ?deleteOnTermination,
      'deviceName': ?deviceName,
      'encrypted': ?encrypted,
      'iops': ?iops,
      'outpostArn': ?outpostArn,
      'snapshotId': ?snapshotId,
      'throughput': ?throughput,
      'volumeSize': ?volumeSize,
      'volumeType': ?volumeType,
    };
  }

  factory AmiFromInstanceEbsBlockDevice.fromMap(Map<String, dynamic> map) {
    return AmiFromInstanceEbsBlockDevice(
      deleteOnTermination: map['deleteOnTermination'] == null ? null : map['deleteOnTermination'] as bool,
      deviceName: map['deviceName'] == null ? null : map['deviceName'] as String,
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as bool,
      iops: map['iops'] == null ? null : map['iops'] as int,
      outpostArn: map['outpostArn'] == null ? null : map['outpostArn'] as String,
      snapshotId: map['snapshotId'] == null ? null : map['snapshotId'] as String,
      throughput: map['throughput'] == null ? null : map['throughput'] as int,
      volumeSize: map['volumeSize'] == null ? null : map['volumeSize'] as int,
      volumeType: map['volumeType'] == null ? null : map['volumeType'] as String,
    );
  }
}

