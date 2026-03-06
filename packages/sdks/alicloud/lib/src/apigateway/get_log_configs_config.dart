// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLogConfigsConfig {
  /// The ID of the Log Config.
  final pulumi.Input<String> id;
  /// The type the of log.
  final pulumi.Input<String> logType;
  /// The region ID of the Log Config.
  final pulumi.Input<String> regionId;
  /// The name of the Log Store.
  final pulumi.Input<String> slsLogStore;
  /// The name of the Project.
  final pulumi.Input<String> slsProject;

  /// Creates a new [GetLogConfigsConfig].
  /// [id] The ID of the Log Config.
  /// [logType] The type the of log.
  /// [regionId] The region ID of the Log Config.
  /// [slsLogStore] The name of the Log Store.
  /// [slsProject] The name of the Project.
  const GetLogConfigsConfig({
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
      id: pulumi.Input.fromValue(map['id'] as String),
      logType: pulumi.Input.fromValue(map['logType'] as String),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      slsLogStore: pulumi.Input.fromValue(map['slsLogStore'] as String),
      slsProject: pulumi.Input.fromValue(map['slsProject'] as String),
    );
  }
}

