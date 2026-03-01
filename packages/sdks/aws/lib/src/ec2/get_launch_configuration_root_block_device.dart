// ignore_for_file: unused_element, unnecessary_cast


class GetLaunchConfigurationRootBlockDevice {
  /// Whether the EBS Volume will be deleted on instance termination.
  final bool deleteOnTermination;
  /// Whether the volume is Encrypted.
  final bool encrypted;
  /// Provisioned IOPs of the volume.
  final int iops;
  /// Throughput of the volume.
  final int throughput;
  /// Size of the volume.
  final int volumeSize;
  /// Type of the volume.
  final String volumeType;

  /// Creates a new [GetLaunchConfigurationRootBlockDevice].
  /// [deleteOnTermination] Whether the EBS Volume will be deleted on instance termination.
  /// [encrypted] Whether the volume is Encrypted.
  /// [iops] Provisioned IOPs of the volume.
  /// [throughput] Throughput of the volume.
  /// [volumeSize] Size of the volume.
  /// [volumeType] Type of the volume.
  GetLaunchConfigurationRootBlockDevice({
    required this.deleteOnTermination,
    required this.encrypted,
    required this.iops,
    required this.throughput,
    required this.volumeSize,
    required this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteOnTermination': deleteOnTermination,
      'encrypted': encrypted,
      'iops': iops,
      'throughput': throughput,
      'volumeSize': volumeSize,
      'volumeType': volumeType,
    };
  }

  factory GetLaunchConfigurationRootBlockDevice.fromMap(Map<String, dynamic> map) {
    return GetLaunchConfigurationRootBlockDevice(
      deleteOnTermination: map['deleteOnTermination'] as bool,
      encrypted: map['encrypted'] as bool,
      iops: map['iops'] as int,
      throughput: map['throughput'] as int,
      volumeSize: map['volumeSize'] as int,
      volumeType: map['volumeType'] as String,
    );
  }
}

