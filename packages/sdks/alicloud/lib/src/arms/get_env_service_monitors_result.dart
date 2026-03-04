// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_env_service_monitors_monitor.dart';

/// Result data returned by getEnvServiceMonitors.
class GetEnvServiceMonitorsResult {
  /// The environment ID.
  final String environmentId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;

  /// A list of ARMS Env Service Monitors. Each element contains the following attributes:
  final List<GetEnvServiceMonitorsMonitor> monitors;
  final String? nameRegex;

  /// A list of ARMS Env Service Monitor names.
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetEnvServiceMonitorsResult].
  /// [environmentId] The environment ID.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [monitors] A list of ARMS Env Service Monitors. Each element contains the following attributes:
  /// [nameRegex] Optional.
  /// [names] A list of ARMS Env Service Monitor names.
  /// [outputFile] Optional.
  GetEnvServiceMonitorsResult({
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
            GetEnvServiceMonitorsMonitor,
            Map<String, dynamic>
          >(monitors, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetEnvServiceMonitorsResult.fromMap(Map<String, dynamic> map) {
    return GetEnvServiceMonitorsResult(
      environmentId: map['environmentId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      monitors: pulumi.Input.decodeList<GetEnvServiceMonitorsMonitor>(
        map['monitors']!,
        (value) => GetEnvServiceMonitorsMonitor.fromMap(
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
