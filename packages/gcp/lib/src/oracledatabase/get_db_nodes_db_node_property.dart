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

  /// Creates a new [GetDbNodesDbNodeProperty].
  /// [dbNodeStorageSizeGb] Output only
  /// [dbServerOcid] Output only
  /// [hostname] Output only
  /// [memorySizeGb] Output only
  /// [ocid] Output only
  /// [ocpuCount] Output only
  /// [state] Output only
  /// [totalCpuCoreCount] Output only
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
    return <String, dynamic>{
      'dbNodeStorageSizeGb': dbNodeStorageSizeGb,
      'dbServerOcid': dbServerOcid,
      'hostname': hostname,
      'memorySizeGb': memorySizeGb,
      'ocid': ocid,
      'ocpuCount': ocpuCount,
      'state': state,
      'totalCpuCoreCount': totalCpuCoreCount,
    };
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
