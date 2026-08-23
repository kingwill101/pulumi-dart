// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchTemplateBlockDeviceMappingEbs {
  /// Whether the volume should be destroyed on instance termination.
  /// See [Preserving Amazon EBS Volumes on Instance Termination](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/preserving-volumes-on-termination.html) for more information.
  final pulumi.Input<String>? deleteOnTermination;
  /// Enables [EBS encryption](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) on the volume.
  /// Cannot be used with `snapshotId`.
  final pulumi.Input<String>? encrypted;
  /// The amount of provisioned [IOPS](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-io-characteristics.html).
  /// This must be set with a `volumeType` of `"io1/io2/gp3"`.
  final pulumi.Input<int>? iops;
  /// Identifier (key ID, key alias, key ARN, or alias ARN) of the customer managed KMS key to use for EBS encryption.
  /// `encrypted` must be set to `true` when this is set.
  final pulumi.Input<String>? kmsKeyId;
  /// The Snapshot ID to mount.
  final pulumi.Input<String>? snapshotId;
  /// The throughput to provision for a `gp3` volume in MiB/s (specified as an integer, e.g., 500), with a maximum of 1,000 MiB/s.
  final pulumi.Input<int>? throughput;
  /// The volume initialization rate in MiB/s (specified as an integer, e.g. 100), with a minimum of 100 MiB/s and maximum of 300 MiB/s.
  final pulumi.Input<int>? volumeInitializationRate;
  /// The size of the volume in gigabytes.
  final pulumi.Input<int>? volumeSize;
  /// The volume type.
  /// Can be one of `standard`, `gp2`, `gp3`, `io1`, `io2`, `sc1` or `st1`.
  final pulumi.Input<String>? volumeType;

  /// Creates a new [LaunchTemplateBlockDeviceMappingEbs].
  /// [deleteOnTermination] Whether the volume should be destroyed on instance termination.
  /// [encrypted] Enables [EBS encryption](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) on the volume.
  /// [iops] The amount of provisioned [IOPS](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-io-characteristics.html).
  /// [kmsKeyId] Identifier (key ID, key alias, key ARN, or alias ARN) of the customer managed KMS key to use for EBS encryption.
  /// [snapshotId] The Snapshot ID to mount.
  /// [throughput] The throughput to provision for a `gp3` volume in MiB/s (specified as an integer, e.g., 500), with a maximum of 1,000 MiB/s.
  /// [volumeInitializationRate] The volume initialization rate in MiB/s (specified as an integer, e.g. 100), with a minimum of 100 MiB/s and maximum of 300 MiB/s.
  /// [volumeSize] The size of the volume in gigabytes.
  /// [volumeType] The volume type.
  const LaunchTemplateBlockDeviceMappingEbs({
    this.deleteOnTermination,
    this.encrypted,
    this.iops,
    this.kmsKeyId,
    this.snapshotId,
    this.throughput,
    this.volumeInitializationRate,
    this.volumeSize,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteOnTermination': ?deleteOnTermination,
      'encrypted': ?encrypted,
      'iops': ?iops,
      'kmsKeyId': ?kmsKeyId,
      'snapshotId': ?snapshotId,
      'throughput': ?throughput,
      'volumeInitializationRate': ?volumeInitializationRate,
      'volumeSize': ?volumeSize,
      'volumeType': ?volumeType,
    };
  }

  factory LaunchTemplateBlockDeviceMappingEbs.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateBlockDeviceMappingEbs(
      deleteOnTermination: (() { final guardedValue = map['deleteOnTermination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iops: (() { final guardedValue = map['iops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotId: (() { final guardedValue = map['snapshotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      throughput: (() { final guardedValue = map['throughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      volumeInitializationRate: (() { final guardedValue = map['volumeInitializationRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      volumeSize: (() { final guardedValue = map['volumeSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      volumeType: (() { final guardedValue = map['volumeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
