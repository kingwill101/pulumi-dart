// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchConfigurationRootBlockDevice {
  /// Whether the volume should be destroyed on instance termination. Defaults to `true`.
  final pulumi.Input<bool?>? deleteOnTermination;
  /// Whether the volume should be encrypted or not. Defaults to `false`.
  final pulumi.Input<bool?>? encrypted;
  /// The amount of provisioned [IOPS](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-io-characteristics.html). This must be set with a `volumeType` of `io1`.
  final pulumi.Input<int?>? iops;
  /// The throughput (MiBps) to provision for a `gp3` volume.
  final pulumi.Input<int?>? throughput;
  /// The size of the volume in gigabytes.
  final pulumi.Input<int?>? volumeSize;
  /// The type of volume. Can be `standard`, `gp2`, `gp3`, `st1`, `sc1` or `io1`.
  final pulumi.Input<String?>? volumeType;

  /// Creates a new [LaunchConfigurationRootBlockDevice].
  /// [deleteOnTermination] Whether the volume should be destroyed on instance termination. Defaults to `true`.
  /// [encrypted] Whether the volume should be encrypted or not. Defaults to `false`.
  /// [iops] The amount of provisioned [IOPS](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-io-characteristics.html). This must be set with a `volumeType` of `io1`.
  /// [throughput] The throughput (MiBps) to provision for a `gp3` volume.
  /// [volumeSize] The size of the volume in gigabytes.
  /// [volumeType] The type of volume. Can be `standard`, `gp2`, `gp3`, `st1`, `sc1` or `io1`.
  const LaunchConfigurationRootBlockDevice({
    this.deleteOnTermination,
    this.encrypted,
    this.iops,
    this.throughput,
    this.volumeSize,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteOnTermination': ?deleteOnTermination,
      'encrypted': ?encrypted,
      'iops': ?iops,
      'throughput': ?throughput,
      'volumeSize': ?volumeSize,
      'volumeType': ?volumeType,
    };
  }

  factory LaunchConfigurationRootBlockDevice.fromMap(Map<String, dynamic> map) {
    return LaunchConfigurationRootBlockDevice(
      deleteOnTermination: (() { final guardedValue = map['deleteOnTermination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      iops: (() { final guardedValue = map['iops']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      throughput: (() { final guardedValue = map['throughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      volumeSize: (() { final guardedValue = map['volumeSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      volumeType: (() { final guardedValue = map['volumeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
