// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_runtime_configuration_server_process.dart';

class FleetRuntimeConfiguration {
  /// Maximum amount of time (in seconds) that a game session can remain in status `ACTIVATING`.
  final pulumi.Input<int>? gameSessionActivationTimeoutSeconds;
  /// Maximum number of game sessions with status `ACTIVATING` to allow on an instance simultaneously.
  final pulumi.Input<int>? maxConcurrentGameSessionActivations;
  /// Collection of server process configurations that describe which server processes to run on each instance in a fleet. See below.
  final pulumi.Input<List<FleetRuntimeConfigurationServerProcess>>? serverProcesses;

  /// Creates a new [FleetRuntimeConfiguration].
  /// [gameSessionActivationTimeoutSeconds] Maximum amount of time (in seconds) that a game session can remain in status `ACTIVATING`.
  /// [maxConcurrentGameSessionActivations] Maximum number of game sessions with status `ACTIVATING` to allow on an instance simultaneously.
  /// [serverProcesses] Collection of server process configurations that describe which server processes to run on each instance in a fleet. See below.
  const FleetRuntimeConfiguration({
    this.gameSessionActivationTimeoutSeconds,
    this.maxConcurrentGameSessionActivations,
    this.serverProcesses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gameSessionActivationTimeoutSeconds': ?gameSessionActivationTimeoutSeconds,
      'maxConcurrentGameSessionActivations': ?maxConcurrentGameSessionActivations,
      'serverProcesses': ?pulumi.Input.mapOptionalInputValue<List<FleetRuntimeConfigurationServerProcess>, List<Map<String, dynamic>>>(serverProcesses, (value) => pulumi.Input.encodeList<FleetRuntimeConfigurationServerProcess, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FleetRuntimeConfiguration.fromMap(Map<String, dynamic> map) {
    return FleetRuntimeConfiguration(
      gameSessionActivationTimeoutSeconds: (() { final guardedValue = map['gameSessionActivationTimeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxConcurrentGameSessionActivations: (() { final guardedValue = map['maxConcurrentGameSessionActivations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      serverProcesses: (() { final guardedValue = map['serverProcesses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FleetRuntimeConfigurationServerProcess>(guardedValue, (value) => FleetRuntimeConfigurationServerProcess.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

