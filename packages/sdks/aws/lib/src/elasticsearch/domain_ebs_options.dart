// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainEbsOptions {
  /// Whether EBS volumes are attached to data nodes in the domain.
  final pulumi.Input<bool> ebsEnabled;
  /// Baseline input/output (I/O) performance of EBS volumes attached to data nodes. Applicable only for the GP3 and Provisioned IOPS EBS volume types.
  final pulumi.Input<int>? iops;
  /// Specifies the throughput (in MiB/s) of the EBS volumes attached to data nodes. Applicable only for the gp3 volume type.
  final pulumi.Input<int>? throughput;
  /// Size of EBS volumes attached to data nodes (in GiB).
  final pulumi.Input<int>? volumeSize;
  /// Type of EBS volumes attached to data nodes.
  final pulumi.Input<String>? volumeType;

  /// Creates a new [DomainEbsOptions].
  /// [ebsEnabled] Whether EBS volumes are attached to data nodes in the domain.
  /// [iops] Baseline input/output (I/O) performance of EBS volumes attached to data nodes. Applicable only for the GP3 and Provisioned IOPS EBS volume types.
  /// [throughput] Specifies the throughput (in MiB/s) of the EBS volumes attached to data nodes. Applicable only for the gp3 volume type.
  /// [volumeSize] Size of EBS volumes attached to data nodes (in GiB).
  /// [volumeType] Type of EBS volumes attached to data nodes.
  DomainEbsOptions({
    required this.ebsEnabled,
    this.iops,
    this.throughput,
    this.volumeSize,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ebsEnabled': ebsEnabled,
      'iops': ?iops,
      'throughput': ?throughput,
      'volumeSize': ?volumeSize,
      'volumeType': ?volumeType,
    };
  }

  factory DomainEbsOptions.fromMap(Map<String, dynamic> map) {
    return DomainEbsOptions(
      ebsEnabled: (map['ebsEnabled'] as bool).input(),
      iops: map['iops'] == null ? null : (map['iops'] as int).input(),
      throughput: map['throughput'] == null ? null : (map['throughput'] as int).input(),
      volumeSize: map['volumeSize'] == null ? null : (map['volumeSize'] as int).input(),
      volumeType: map['volumeType'] == null ? null : (map['volumeType'] as String).input(),
    );
  }
}

