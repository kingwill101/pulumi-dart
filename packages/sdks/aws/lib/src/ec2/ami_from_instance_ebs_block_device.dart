// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AmiFromInstanceEbsBlockDevice {
  /// Boolean controlling whether the EBS volumes created to
  /// support each created instance will be deleted once that instance is terminated.
  final pulumi.Input<bool>? deleteOnTermination;
  /// Path at which the device is exposed to created instances.
  final pulumi.Input<String>? deviceName;
  /// Boolean controlling whether the created EBS volumes will be encrypted. Can't be used with `snapshot_id`.
  final pulumi.Input<bool>? encrypted;
  /// Number of I/O operations per second the
  /// created volumes will support.
  final pulumi.Input<int>? iops;
  /// ARN of the Outpost on which the snapshot is stored.
  ///
  /// &gt; **Note:** You can specify `encrypted` or `snapshot_id` but not both.
  final pulumi.Input<String>? outpostArn;
  /// ID of an EBS snapshot that will be used to initialize the created
  /// EBS volumes. If set, the `volume_size` attribute must be at least as large as the referenced
  /// snapshot.
  final pulumi.Input<String>? snapshotId;
  /// Throughput that the EBS volume supports, in MiB/s. Only valid for `volume_type` of `gp3`.
  final pulumi.Input<int>? throughput;
  /// Size of created volumes in GiB.
  /// If `snapshot_id` is set and `volume_size` is omitted then the volume will have the same size
  /// as the selected snapshot.
  final pulumi.Input<int>? volumeSize;
  /// Type of EBS volume to create. Can be `standard`, `gp2`, `gp3`, `io1`, `io2`, `sc1` or `st1` (Default: `standard`).
  final pulumi.Input<String>? volumeType;

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
  const AmiFromInstanceEbsBlockDevice({
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
      deleteOnTermination: (() { final guardedValue = map['deleteOnTermination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deviceName: (() { final guardedValue = map['deviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      iops: (() { final guardedValue = map['iops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      outpostArn: (() { final guardedValue = map['outpostArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotId: (() { final guardedValue = map['snapshotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      throughput: (() { final guardedValue = map['throughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      volumeSize: (() { final guardedValue = map['volumeSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      volumeType: (() { final guardedValue = map['volumeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

