// ignore_for_file: unused_element, unnecessary_cast

class DomainEbsOptionsOpensearch {
  /// Whether EBS volumes are attached to data nodes in the domain.
  final bool ebsEnabled;

  /// Baseline input/output (I/O) performance of EBS volumes attached to data nodes. Applicable only for the GP3 and Provisioned IOPS EBS volume types.
  final int? iops;

  /// Specifies the throughput (in MiB/s) of the EBS volumes attached to data nodes. Applicable only for the gp3 volume type.
  final int? throughput;

  /// Size of EBS volumes attached to data nodes (in GiB).
  final int? volumeSize;

  /// Type of EBS volumes attached to data nodes.
  final String? volumeType;

  DomainEbsOptionsOpensearch({
    required this.ebsEnabled,
    this.iops,
    this.throughput,
    this.volumeSize,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ebsEnabled'] = ebsEnabled;
    final iopsValue = iops;
    if (iopsValue != null) {
      map['iops'] = iopsValue;
    }
    final throughputValue = throughput;
    if (throughputValue != null) {
      map['throughput'] = throughputValue;
    }
    final volumeSizeValue = volumeSize;
    if (volumeSizeValue != null) {
      map['volumeSize'] = volumeSizeValue;
    }
    final volumeTypeValue = volumeType;
    if (volumeTypeValue != null) {
      map['volumeType'] = volumeTypeValue;
    }
    return map;
  }

  factory DomainEbsOptionsOpensearch.fromMap(Map<String, dynamic> map) {
    return DomainEbsOptionsOpensearch(
      ebsEnabled: map['ebsEnabled'] as bool,
      iops: map['iops'] == null ? null : map['iops'] as int,
      throughput: map['throughput'] == null ? null : map['throughput'] as int,
      volumeSize: map['volumeSize'] == null ? null : map['volumeSize'] as int,
      volumeType:
          map['volumeType'] == null ? null : map['volumeType'] as String,
    );
  }
}
