// ignore_for_file: unused_element, unnecessary_cast

class GetDbNodesDbNodeProperty {
  /// Output only
  final int dbNodeStorageSizeGb;

  /// Output only
  final String dbServerOcid;

  /// Output only
  final String hostname;

  /// Output only
  final int memorySizeGb;

  /// Output only
  final String ocid;

  /// Output only
  final int ocpuCount;

  /// Output only
  final String state;

  /// Output only
  final int totalCpuCoreCount;

  GetDbNodesDbNodeProperty({
    required this.dbNodeStorageSizeGb,
    required this.dbServerOcid,
    required this.hostname,
    required this.memorySizeGb,
    required this.ocid,
    required this.ocpuCount,
    required this.state,
    required this.totalCpuCoreCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dbNodeStorageSizeGb'] = dbNodeStorageSizeGb;
    map['dbServerOcid'] = dbServerOcid;
    map['hostname'] = hostname;
    map['memorySizeGb'] = memorySizeGb;
    map['ocid'] = ocid;
    map['ocpuCount'] = ocpuCount;
    map['state'] = state;
    map['totalCpuCoreCount'] = totalCpuCoreCount;
    return map;
  }

  factory GetDbNodesDbNodeProperty.fromMap(Map<String, dynamic> map) {
    return GetDbNodesDbNodeProperty(
      dbNodeStorageSizeGb: map['dbNodeStorageSizeGb'] as int,
      dbServerOcid: map['dbServerOcid'] as String,
      hostname: map['hostname'] as String,
      memorySizeGb: map['memorySizeGb'] as int,
      ocid: map['ocid'] as String,
      ocpuCount: map['ocpuCount'] as int,
      state: map['state'] as String,
      totalCpuCoreCount: map['totalCpuCoreCount'] as int,
    );
  }
}
