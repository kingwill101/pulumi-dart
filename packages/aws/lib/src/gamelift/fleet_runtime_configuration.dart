// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_runtime_configuration_server_process.dart';

class FleetRuntimeConfiguration {
  /// Maximum amount of time (in seconds) that a game session can remain in status `ACTIVATING`.
  final int? gameSessionActivationTimeoutSeconds;

  /// Maximum number of game sessions with status `ACTIVATING` to allow on an instance simultaneously.
  final int? maxConcurrentGameSessionActivations;

  /// Collection of server process configurations that describe which server processes to run on each instance in a fleet. See below.
  final List<FleetRuntimeConfigurationServerProcess>? serverProcesses;

  /// Creates a new [FleetRuntimeConfiguration].
  /// [gameSessionActivationTimeoutSeconds] Maximum amount of time (in seconds) that a game session can remain in status `ACTIVATING`.
  /// [maxConcurrentGameSessionActivations] Maximum number of game sessions with status `ACTIVATING` to allow on an instance simultaneously.
  /// [serverProcesses] Collection of server process configurations that describe which server processes to run on each instance in a fleet. See below.
  FleetRuntimeConfiguration({
    this.gameSessionActivationTimeoutSeconds,
    this.maxConcurrentGameSessionActivations,
    this.serverProcesses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gameSessionActivationTimeoutSeconds':
          ?gameSessionActivationTimeoutSeconds,
      'maxConcurrentGameSessionActivations':
          ?maxConcurrentGameSessionActivations,
      'serverProcesses': ?serverProcesses == null
          ? null
          : pulumi.Input.encodeList<
              FleetRuntimeConfigurationServerProcess,
              Map<String, dynamic>
            >(serverProcesses!, (value) => value.toMap()),
    };
  }

  factory FleetRuntimeConfiguration.fromMap(Map<String, dynamic> map) {
    return FleetRuntimeConfiguration(
      gameSessionActivationTimeoutSeconds:
          map['gameSessionActivationTimeoutSeconds'] == null
          ? null
          : map['gameSessionActivationTimeoutSeconds'] as int,
      maxConcurrentGameSessionActivations:
          map['maxConcurrentGameSessionActivations'] == null
          ? null
          : map['maxConcurrentGameSessionActivations'] as int,
      serverProcesses: map['serverProcesses'] == null
          ? null
          : pulumi.Input.decodeList<FleetRuntimeConfigurationServerProcess>(
              map['serverProcesses'],
              (value) => FleetRuntimeConfigurationServerProcess.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
