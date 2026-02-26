// ignore_for_file: unused_element, unnecessary_cast

class AmiFromInstanceEbsBlockDevice {
  /// Boolean controlling whether the EBS volumes created to
  /// support each created instance will be deleted once that instance is terminated.
  final bool? deleteOnTermination;

  /// Path at which the device is exposed to created instances.
  final String? deviceName;

  /// Boolean controlling whether the created EBS volumes will be encrypted. Can't be used with <span pulumi-lang-nodejs="`snapshotId`" pulumi-lang-dotnet="`SnapshotId`" pulumi-lang-go="`snapshotId`" pulumi-lang-python="`snapshot_id`" pulumi-lang-yaml="`snapshotId`" pulumi-lang-java="`snapshotId`">`snapshot_id`</span>.
  final bool? encrypted;

  /// Number of I/O operations per second the
  /// created volumes will support.
  final int? iops;

  /// ARN of the Outpost on which the snapshot is stored.
  ///
  /// > **Note:** You can specify <span pulumi-lang-nodejs="`encrypted`" pulumi-lang-dotnet="`Encrypted`" pulumi-lang-go="`encrypted`" pulumi-lang-python="`encrypted`" pulumi-lang-yaml="`encrypted`" pulumi-lang-java="`encrypted`">`encrypted`</span> or <span pulumi-lang-nodejs="`snapshotId`" pulumi-lang-dotnet="`SnapshotId`" pulumi-lang-go="`snapshotId`" pulumi-lang-python="`snapshot_id`" pulumi-lang-yaml="`snapshotId`" pulumi-lang-java="`snapshotId`">`snapshot_id`</span> but not both.
  final String? outpostArn;

  /// ID of an EBS snapshot that will be used to initialize the created
  /// EBS volumes. If set, the <span pulumi-lang-nodejs="`volumeSize`" pulumi-lang-dotnet="`VolumeSize`" pulumi-lang-go="`volumeSize`" pulumi-lang-python="`volume_size`" pulumi-lang-yaml="`volumeSize`" pulumi-lang-java="`volumeSize`">`volume_size`</span> attribute must be at least as large as the referenced
  /// snapshot.
  final String? snapshotId;

  /// Throughput that the EBS volume supports, in MiB/s. Only valid for <span pulumi-lang-nodejs="`volumeType`" pulumi-lang-dotnet="`VolumeType`" pulumi-lang-go="`volumeType`" pulumi-lang-python="`volume_type`" pulumi-lang-yaml="`volumeType`" pulumi-lang-java="`volumeType`">`volume_type`</span> of <span pulumi-lang-nodejs="`gp3`" pulumi-lang-dotnet="`Gp3`" pulumi-lang-go="`gp3`" pulumi-lang-python="`gp3`" pulumi-lang-yaml="`gp3`" pulumi-lang-java="`gp3`">`gp3`</span>.
  final int? throughput;

  /// Size of created volumes in GiB.
  /// If <span pulumi-lang-nodejs="`snapshotId`" pulumi-lang-dotnet="`SnapshotId`" pulumi-lang-go="`snapshotId`" pulumi-lang-python="`snapshot_id`" pulumi-lang-yaml="`snapshotId`" pulumi-lang-java="`snapshotId`">`snapshot_id`</span> is set and <span pulumi-lang-nodejs="`volumeSize`" pulumi-lang-dotnet="`VolumeSize`" pulumi-lang-go="`volumeSize`" pulumi-lang-python="`volume_size`" pulumi-lang-yaml="`volumeSize`" pulumi-lang-java="`volumeSize`">`volume_size`</span> is omitted then the volume will have the same size
  /// as the selected snapshot.
  final int? volumeSize;

  /// Type of EBS volume to create. Can be <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>, <span pulumi-lang-nodejs="`gp2`" pulumi-lang-dotnet="`Gp2`" pulumi-lang-go="`gp2`" pulumi-lang-python="`gp2`" pulumi-lang-yaml="`gp2`" pulumi-lang-java="`gp2`">`gp2`</span>, <span pulumi-lang-nodejs="`gp3`" pulumi-lang-dotnet="`Gp3`" pulumi-lang-go="`gp3`" pulumi-lang-python="`gp3`" pulumi-lang-yaml="`gp3`" pulumi-lang-java="`gp3`">`gp3`</span>, <span pulumi-lang-nodejs="`io1`" pulumi-lang-dotnet="`Io1`" pulumi-lang-go="`io1`" pulumi-lang-python="`io1`" pulumi-lang-yaml="`io1`" pulumi-lang-java="`io1`">`io1`</span>, <span pulumi-lang-nodejs="`io2`" pulumi-lang-dotnet="`Io2`" pulumi-lang-go="`io2`" pulumi-lang-python="`io2`" pulumi-lang-yaml="`io2`" pulumi-lang-java="`io2`">`io2`</span>, <span pulumi-lang-nodejs="`sc1`" pulumi-lang-dotnet="`Sc1`" pulumi-lang-go="`sc1`" pulumi-lang-python="`sc1`" pulumi-lang-yaml="`sc1`" pulumi-lang-java="`sc1`">`sc1`</span> or <span pulumi-lang-nodejs="`st1`" pulumi-lang-dotnet="`St1`" pulumi-lang-go="`st1`" pulumi-lang-python="`st1`" pulumi-lang-yaml="`st1`" pulumi-lang-java="`st1`">`st1`</span> (Default: <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>).
  final String? volumeType;

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
    final map = <String, dynamic>{};
    final deleteOnTerminationValue = deleteOnTermination;
    if (deleteOnTerminationValue != null) {
      map['deleteOnTermination'] = deleteOnTerminationValue;
    }
    final deviceNameValue = deviceName;
    if (deviceNameValue != null) {
      map['deviceName'] = deviceNameValue;
    }
    final encryptedValue = encrypted;
    if (encryptedValue != null) {
      map['encrypted'] = encryptedValue;
    }
    final iopsValue = iops;
    if (iopsValue != null) {
      map['iops'] = iopsValue;
    }
    final outpostArnValue = outpostArn;
    if (outpostArnValue != null) {
      map['outpostArn'] = outpostArnValue;
    }
    final snapshotIdValue = snapshotId;
    if (snapshotIdValue != null) {
      map['snapshotId'] = snapshotIdValue;
    }
    final throughputValue = throughput;
    if (throughputValue != null) {
      map['throughput'] = throughputValue;
    }
    final volumeSizeValue = volumeSize;
    if (volumeSizeValue != null) {
      map['volumeSize'] = volumeSizeValue;
    }
    final volumeTypeValue = volumeType;
    if (volumeTypeValue != null) {
      map['volumeType'] = volumeTypeValue;
    }
    return map;
  }

  factory AmiFromInstanceEbsBlockDevice.fromMap(Map<String, dynamic> map) {
    return AmiFromInstanceEbsBlockDevice(
      deleteOnTermination: map['deleteOnTermination'] == null
          ? null
          : map['deleteOnTermination'] as bool,
      deviceName:
          map['deviceName'] == null ? null : map['deviceName'] as String,
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as bool,
      iops: map['iops'] == null ? null : map['iops'] as int,
      outpostArn:
          map['outpostArn'] == null ? null : map['outpostArn'] as String,
      snapshotId:
          map['snapshotId'] == null ? null : map['snapshotId'] as String,
      throughput: map['throughput'] == null ? null : map['throughput'] as int,
      volumeSize: map['volumeSize'] == null ? null : map['volumeSize'] as int,
      volumeType:
          map['volumeType'] == null ? null : map['volumeType'] as String,
    );
  }
}
