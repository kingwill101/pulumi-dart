// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainEbsOption {
  /// Whether EBS volumes are attached to data nodes in the domain.
  final pulumi.Input<bool> ebsEnabled;
  /// The baseline input/output (I/O) performance of EBS volumes attached to data nodes.
  final pulumi.Input<int> iops;
  /// The throughput (in MiB/s) of the EBS volumes attached to data nodes.
  final pulumi.Input<int> throughput;
  /// The size of EBS volumes attached to data nodes (in GB).
  final pulumi.Input<int> volumeSize;
  /// The type of EBS volumes attached to data nodes.
  final pulumi.Input<String> volumeType;

  /// Creates a new [GetDomainEbsOption].
  /// [ebsEnabled] Whether EBS volumes are attached to data nodes in the domain.
  /// [iops] The baseline input/output (I/O) performance of EBS volumes attached to data nodes.
  /// [throughput] The throughput (in MiB/s) of the EBS volumes attached to data nodes.
  /// [volumeSize] The size of EBS volumes attached to data nodes (in GB).
  /// [volumeType] The type of EBS volumes attached to data nodes.
  const GetDomainEbsOption({
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
      ebsEnabled: pulumi.Input.fromValue(map['ebsEnabled'] as bool),
      iops: pulumi.Input.fromValue((map['iops'] as num).toInt()),
      throughput: pulumi.Input.fromValue((map['throughput'] as num).toInt()),
      volumeSize: pulumi.Input.fromValue((map['volumeSize'] as num).toInt()),
      volumeType: pulumi.Input.fromValue(map['volumeType'] as String),
    );
  }
}
