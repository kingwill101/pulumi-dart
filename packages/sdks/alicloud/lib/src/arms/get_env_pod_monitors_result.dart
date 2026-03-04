// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_env_pod_monitors_monitor.dart';

/// Result data returned by getEnvPodMonitors.
class GetEnvPodMonitorsResult {
  /// The environment ID.
  final String environmentId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;

  /// A list of ARMS Env Pod Monitors. Each element contains the following attributes:
  final List<GetEnvPodMonitorsMonitor> monitors;
  final String? nameRegex;

  /// A list of ARMS Env Pod Monitor names.
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetEnvPodMonitorsResult].
  /// [environmentId] The environment ID.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [monitors] A list of ARMS Env Pod Monitors. Each element contains the following attributes:
  /// [nameRegex] Optional.
  /// [names] A list of ARMS Env Pod Monitor names.
  /// [outputFile] Optional.
  GetEnvPodMonitorsResult({
    required this.environmentId,
    required this.id,
    required this.ids,
    required this.monitors,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'id': id,
      'ids': ids,
      'monitors':
          pulumi.Input.encodeList<
            GetEnvPodMonitorsMonitor,
            Map<String, dynamic>
          >(monitors, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetEnvPodMonitorsResult.fromMap(Map<String, dynamic> map) {
    return GetEnvPodMonitorsResult(
      environmentId: map['environmentId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      monitors: pulumi.Input.decodeList<GetEnvPodMonitorsMonitor>(
        map['monitors']!,
        (value) => GetEnvPodMonitorsMonitor.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
