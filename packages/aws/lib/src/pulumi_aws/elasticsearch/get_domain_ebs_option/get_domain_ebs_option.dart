// ignore_for_file: unused_element, unnecessary_cast

class GetDomainEbsOption {
  /// Whether EBS volumes are attached to data nodes in the domain.
  final bool ebsEnabled;

  /// The baseline input/output (I/O) performance of EBS volumes attached to data nodes.
  final int iops;

  /// The throughput (in MiB/s) of the EBS volumes attached to data nodes.
  final int throughput;

  /// The size of EBS volumes attached to data nodes (in GB).
  final int volumeSize;

  /// The type of EBS volumes attached to data nodes.
  final String volumeType;

  GetDomainEbsOption({
    required this.ebsEnabled,
    required this.iops,
    required this.throughput,
    required this.volumeSize,
    required this.volumeType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ebsEnabled'] = ebsEnabled;
    map['iops'] = iops;
    map['throughput'] = throughput;
    map['volumeSize'] = volumeSize;
    map['volumeType'] = volumeType;
    return map;
  }

  factory GetDomainEbsOption.fromMap(Map<String, dynamic> map) {
    return GetDomainEbsOption(
      ebsEnabled: map['ebsEnabled'] as bool,
      iops: map['iops'] as int,
      throughput: map['throughput'] as int,
      volumeSize: map['volumeSize'] as int,
      volumeType: map['volumeType'] as String,
    );
  }
}
