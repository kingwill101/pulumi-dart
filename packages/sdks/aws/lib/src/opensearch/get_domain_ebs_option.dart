// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainEbsOption {
  /// Whether EBS volumes are attached to data nodes in the domain.
  final pulumi.Input<bool> ebsEnabled;
  /// Baseline input/output (I/O) performance of EBS volumes attached to data nodes.
  final pulumi.Input<int> iops;
  /// The throughput (in MiB/s) of the EBS volumes attached to data nodes.
  final pulumi.Input<int> throughput;
  /// Size of EBS volumes attached to data nodes (in GB).
  final pulumi.Input<int> volumeSize;
  /// Type of EBS volumes attached to data nodes.
  final pulumi.Input<String> volumeType;

  /// Creates a new [GetDomainEbsOption].
  /// [ebsEnabled] Whether EBS volumes are attached to data nodes in the domain.
  /// [iops] Baseline input/output (I/O) performance of EBS volumes attached to data nodes.
  /// [throughput] The throughput (in MiB/s) of the EBS volumes attached to data nodes.
  /// [volumeSize] Size of EBS volumes attached to data nodes (in GB).
  /// [volumeType] Type of EBS volumes attached to data nodes.
  GetDomainEbsOption({
    required this.ebsEnabled,
    required this.iops,
    required this.throughput,
    required this.volumeSize,
    required this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ebsEnabled': ebsEnabled,
      'iops': iops,
      'throughput': throughput,
      'volumeSize': volumeSize,
      'volumeType': volumeType,
    };
  }

  factory GetDomainEbsOption.fromMap(Map<String, dynamic> map) {
    return GetDomainEbsOption(
      ebsEnabled: (map['ebsEnabled'] as bool).input(),
      iops: (map['iops'] as int).input(),
      throughput: (map['throughput'] as int).input(),
      volumeSize: (map['volumeSize'] as int).input(),
      volumeType: (map['volumeType'] as String).input(),
    );
  }
}

