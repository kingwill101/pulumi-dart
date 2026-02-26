// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceRootBlockDevice {
  /// If the root block device will be deleted on termination.
  final bool deleteOnTermination;

  /// Physical name of the device.
  final String deviceName;

  /// If the EBS volume is encrypted.
  final bool encrypted;

  /// <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> If the volume is not a provisioned IOPS image, otherwise the supported IOPS count.
  final int iops;
  final String kmsKeyId;

  /// Map of tags assigned to the Instance.
  final Map<String, String> tags;

  /// Throughput of the volume, in MiB/s.
  final int throughput;
  final String volumeId;

  /// Size of the volume, in GiB.
  final int volumeSize;

  /// Type of the volume.
  final String volumeType;

  GetInstanceRootBlockDevice({
    required this.deleteOnTermination,
    required this.deviceName,
    required this.encrypted,
    required this.iops,
    required this.kmsKeyId,
    required this.tags,
    required this.throughput,
    required this.volumeId,
    required this.volumeSize,
    required this.volumeType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deleteOnTermination'] = deleteOnTermination;
    map['deviceName'] = deviceName;
    map['encrypted'] = encrypted;
    map['iops'] = iops;
    map['kmsKeyId'] = kmsKeyId;
    map['tags'] = tags;
    map['throughput'] = throughput;
    map['volumeId'] = volumeId;
    map['volumeSize'] = volumeSize;
    map['volumeType'] = volumeType;
    return map;
  }

  factory GetInstanceRootBlockDevice.fromMap(Map<String, dynamic> map) {
    return GetInstanceRootBlockDevice(
      deleteOnTermination: map['deleteOnTermination'] as bool,
      deviceName: map['deviceName'] as String,
      encrypted: map['encrypted'] as bool,
      iops: map['iops'] as int,
      kmsKeyId: map['kmsKeyId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      throughput: map['throughput'] as int,
      volumeId: map['volumeId'] as String,
      volumeSize: map['volumeSize'] as int,
      volumeType: map['volumeType'] as String,
    );
  }
}
