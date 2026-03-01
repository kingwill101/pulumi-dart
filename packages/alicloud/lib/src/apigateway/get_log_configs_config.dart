// ignore_for_file: unused_element, unnecessary_cast


class GetLogConfigsConfig {
  /// The ID of the Log Config.
  final String id;
  /// The type the of log.
  final String logType;
  /// The region ID of the Log Config.
  final String regionId;
  /// The name of the Log Store.
  final String slsLogStore;
  /// The name of the Project.
  final String slsProject;

  /// Creates a new [GetLogConfigsConfig].
  /// [id] The ID of the Log Config.
  /// [logType] The type the of log.
  /// [regionId] The region ID of the Log Config.
  /// [slsLogStore] The name of the Log Store.
  /// [slsProject] The name of the Project.
  GetLogConfigsConfig({
    required this.id,
    required this.logType,
    required this.regionId,
    required this.slsLogStore,
    required this.slsProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'logType': logType,
      'regionId': regionId,
      'slsLogStore': slsLogStore,
      'slsProject': slsProject,
    };
  }

  factory GetLogConfigsConfig.fromMap(Map<String, dynamic> map) {
    return GetLogConfigsConfig(
      id: map['id'] as String,
      logType: map['logType'] as String,
      regionId: map['regionId'] as String,
      slsLogStore: map['slsLogStore'] as String,
      slsProject: map['slsProject'] as String,
    );
  }
}

