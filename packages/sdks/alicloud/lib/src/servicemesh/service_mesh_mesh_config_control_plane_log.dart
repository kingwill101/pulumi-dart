// ignore_for_file: unused_element, unnecessary_cast


class ServiceMeshMeshConfigControlPlaneLog {
  /// Enable CNI
  final bool enabled;
  /// Lifecycle of logs has been collected to Alibaba Cloud SLS
  final int? logTtlInDay;
  /// The name of the SLS Project to which the control plane logs are collected.
  final String? project;

  /// Creates a new [ServiceMeshMeshConfigControlPlaneLog].
  /// [enabled] Enable CNI
  /// [logTtlInDay] Lifecycle of logs has been collected to Alibaba Cloud SLS
  /// [project] The name of the SLS Project to which the control plane logs are collected.
  ServiceMeshMeshConfigControlPlaneLog({
    required this.enabled,
    this.logTtlInDay,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'logTtlInDay': ?logTtlInDay,
      'project': ?project,
    };
  }

  factory ServiceMeshMeshConfigControlPlaneLog.fromMap(Map<String, dynamic> map) {
    return ServiceMeshMeshConfigControlPlaneLog(
      enabled: map['enabled'] as bool,
      logTtlInDay: map['logTtlInDay'] == null ? null : map['logTtlInDay'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

