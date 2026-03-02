// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLaunchConfigurationRootBlockDevice {
  /// Whether the EBS Volume will be deleted on instance termination.
  final pulumi.Input<bool> deleteOnTermination;
  /// Whether the volume is Encrypted.
  final pulumi.Input<bool> encrypted;
  /// Provisioned IOPs of the volume.
  final pulumi.Input<int> iops;
  /// Throughput of the volume.
  final pulumi.Input<int> throughput;
  /// Size of the volume.
  final pulumi.Input<int> volumeSize;
  /// Type of the volume.
  final pulumi.Input<String> volumeType;

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
      deleteOnTermination: (map['deleteOnTermination'] as bool).input(),
      encrypted: (map['encrypted'] as bool).input(),
      iops: (map['iops'] as int).input(),
      throughput: (map['throughput'] as int).input(),
      volumeSize: (map['volumeSize'] as int).input(),
      volumeType: (map['volumeType'] as String).input(),
    );
  }
}

