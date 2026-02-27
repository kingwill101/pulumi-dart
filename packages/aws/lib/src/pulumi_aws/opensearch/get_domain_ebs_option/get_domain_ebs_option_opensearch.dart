// ignore_for_file: unused_element, unnecessary_cast

class GetDomainEbsOptionOpensearch {
  /// Whether EBS volumes are attached to data nodes in the domain.
  final bool ebsEnabled;

  /// Baseline input/output (I/O) performance of EBS volumes attached to data nodes.
  final int iops;

  /// The throughput (in MiB/s) of the EBS volumes attached to data nodes.
  final int throughput;

  /// Size of EBS volumes attached to data nodes (in GB).
  final int volumeSize;

  /// Type of EBS volumes attached to data nodes.
  final String volumeType;

  GetDomainEbsOptionOpensearch({
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

  factory GetDomainEbsOptionOpensearch.fromMap(Map<String, dynamic> map) {
    return GetDomainEbsOptionOpensearch(
      ebsEnabled: map['ebsEnabled'] as bool,
      iops: map['iops'] as int,
      throughput: map['throughput'] as int,
      volumeSize: map['volumeSize'] as int,
      volumeType: map['volumeType'] as String,
    );
  }
}
