// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpotFleetRequestLaunchSpecificationRootBlockDevice {
  final pulumi.Input<bool?>? deleteOnTermination;
  final pulumi.Input<bool?>? encrypted;
  final pulumi.Input<int?>? iops;
  final pulumi.Input<String?>? kmsKeyId;
  final pulumi.Input<int?>? throughput;
  final pulumi.Input<int?>? volumeSize;
  final pulumi.Input<String?>? volumeType;

  /// Creates a new [SpotFleetRequestLaunchSpecificationRootBlockDevice].
  /// [deleteOnTermination] Optional.
  /// [encrypted] Optional.
  /// [iops] Optional.
  /// [kmsKeyId] Optional.
  /// [throughput] Optional.
  /// [volumeSize] Optional.
  /// [volumeType] Optional.
  const SpotFleetRequestLaunchSpecificationRootBlockDevice({
    this.deleteOnTermination,
    this.encrypted,
    this.iops,
    this.kmsKeyId,
    this.throughput,
    this.volumeSize,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteOnTermination': ?deleteOnTermination,
      'encrypted': ?encrypted,
      'iops': ?iops,
      'kmsKeyId': ?kmsKeyId,
      'throughput': ?throughput,
      'volumeSize': ?volumeSize,
      'volumeType': ?volumeType,
    };
  }

  factory SpotFleetRequestLaunchSpecificationRootBlockDevice.fromMap(Map<String, dynamic> map) {
    return SpotFleetRequestLaunchSpecificationRootBlockDevice(
      deleteOnTermination: (() { final guardedValue = map['deleteOnTermination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      iops: (() { final guardedValue = map['iops']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      throughput: (() { final guardedValue = map['throughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      volumeSize: (() { final guardedValue = map['volumeSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      volumeType: (() { final guardedValue = map['volumeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
