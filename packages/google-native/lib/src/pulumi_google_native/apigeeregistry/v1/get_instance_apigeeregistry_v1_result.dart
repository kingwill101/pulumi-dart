// ignore_for_file: unused_element, unnecessary_cast

import 'build_response.dart';
import 'config_response.dart';

/// Result data returned by getInstance.
class GetInstanceApigeeregistryV1Result {
  /// Build info of the Instance if it's in `ACTIVE` state.
  final BuildResponse build;

  /// Config of the Instance.
  final ConfigResponse config;

  /// Creation timestamp.
  final String createTime;

  /// Format: `projects/*/locations/*/instance`. Currently only `locations/global` is supported.
  final String name;

  /// The current state of the Instance.
  final String state;

  /// Extra information of Instance.State if the state is `FAILED`.
  final String stateMessage;

  /// Last update timestamp.
  final String updateTime;

  GetInstanceApigeeregistryV1Result({
    required this.build,
    required this.config,
    required this.createTime,
    required this.name,
    required this.state,
    required this.stateMessage,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['build'] = build.toMap();
    map['config'] = config.toMap();
    map['createTime'] = createTime;
    map['name'] = name;
    map['state'] = state;
    map['stateMessage'] = stateMessage;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetInstanceApigeeregistryV1Result.fromMap(Map<String, dynamic> map) {
    return GetInstanceApigeeregistryV1Result(
      build:
          BuildResponse.fromMap((map['build'] as Map).cast<String, dynamic>()),
      config: ConfigResponse.fromMap(
          (map['config'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      name: map['name'] as String,
      state: map['state'] as String,
      stateMessage: map['stateMessage'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
