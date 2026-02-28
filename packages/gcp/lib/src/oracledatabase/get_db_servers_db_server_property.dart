// ignore_for_file: unused_element, unnecessary_cast

class GetDbServersDbServerProperty {
  /// Output only
  final List<String> dbNodeIds;

  /// Output only
  final int dbNodeStorageSizeGb;

  /// Output only
  final int maxDbNodeStorageSizeGb;

  /// Output only
  final int maxMemorySizeGb;

  /// Output only
  final int maxOcpuCount;

  /// Output only
  final int memorySizeGb;

  /// Output only
  final String ocid;

  /// Output only
  final int ocpuCount;

  /// Output only
  final String state;

  /// Output only
  final int vmCount;

  /// Creates a new [GetDbServersDbServerProperty].
  /// [dbNodeIds] Output only
  /// [dbNodeStorageSizeGb] Output only
  /// [maxDbNodeStorageSizeGb] Output only
  /// [maxMemorySizeGb] Output only
  /// [maxOcpuCount] Output only
  /// [memorySizeGb] Output only
  /// [ocid] Output only
  /// [ocpuCount] Output only
  /// [state] Output only
  /// [vmCount] Output only
  GetDbServersDbServerProperty({
    required this.dbNodeIds,
    required this.dbNodeStorageSizeGb,
    required this.maxDbNodeStorageSizeGb,
    required this.maxMemorySizeGb,
    required this.maxOcpuCount,
    required this.memorySizeGb,
    required this.ocid,
    required this.ocpuCount,
    required this.state,
    required this.vmCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dbNodeIds'] = dbNodeIds;
    map['dbNodeStorageSizeGb'] = dbNodeStorageSizeGb;
    map['maxDbNodeStorageSizeGb'] = maxDbNodeStorageSizeGb;
    map['maxMemorySizeGb'] = maxMemorySizeGb;
    map['maxOcpuCount'] = maxOcpuCount;
    map['memorySizeGb'] = memorySizeGb;
    map['ocid'] = ocid;
    map['ocpuCount'] = ocpuCount;
    map['state'] = state;
    map['vmCount'] = vmCount;
    return map;
  }

  factory GetDbServersDbServerProperty.fromMap(Map<String, dynamic> map) {
    return GetDbServersDbServerProperty(
      dbNodeIds: (map['dbNodeIds'] as List).cast<String>(),
      dbNodeStorageSizeGb: map['dbNodeStorageSizeGb'] as int,
      maxDbNodeStorageSizeGb: map['maxDbNodeStorageSizeGb'] as int,
      maxMemorySizeGb: map['maxMemorySizeGb'] as int,
      maxOcpuCount: map['maxOcpuCount'] as int,
      memorySizeGb: map['memorySizeGb'] as int,
      ocid: map['ocid'] as String,
      ocpuCount: map['ocpuCount'] as int,
      state: map['state'] as String,
      vmCount: map['vmCount'] as int,
    );
  }
}
