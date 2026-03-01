// ignore_for_file: unused_element, unnecessary_cast


class ClusterV2ManagerDirectoryService {
  /// The scheduler type. Valid values:
  ///
  /// - SLURM
  /// - PBS
  /// - OPENGRIDSCHEDULER
  /// - LSF_PLUGIN
  /// - PBS_PLUGIN
  final String? type;
  final String? version;

  /// Creates a new [ClusterV2ManagerDirectoryService].
  /// [type] The scheduler type. Valid values:
  /// [version] Optional.
  ClusterV2ManagerDirectoryService({
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'version': ?version,
    };
  }

  factory ClusterV2ManagerDirectoryService.fromMap(Map<String, dynamic> map) {
    return ClusterV2ManagerDirectoryService(
      type: map['type'] == null ? null : map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

