// ignore_for_file: unused_element, unnecessary_cast

import 'barrier.dart';
import 'container.dart';
import 'environment.dart';
import 'script.dart';

/// Runnable describes instructions for executing a specific script or container as part of a Task.
class Runnable {
  /// By default, after a Runnable fails, no further Runnable are executed. This flag indicates that this Runnable must be run even if the Task has already failed. This is useful for Runnables that copy output files off of the VM or for debugging. The always_run flag does not override the Task's overall max_run_duration. If the max_run_duration has expired then no further Runnables will execute, not even always_run Runnables.
  final bool? alwaysRun;

  /// This flag allows a Runnable to continue running in the background while the Task executes subsequent Runnables. This is useful to provide services to other Runnables (or to provide debugging support tools like SSH servers).
  final bool? background;

  /// Barrier runnable.
  final Barrier? barrier;

  /// Container runnable.
  final Container? container;

  /// Optional. DisplayName is an optional field that can be provided by the caller. If provided, it will be used in logs and other outputs to identify the script, making it easier for users to understand the logs. If not provided the index of the runnable will be used for outputs.
  final String? displayName;

  /// Environment variables for this Runnable (overrides variables set for the whole Task or TaskGroup).
  final Environment? environment;

  /// Normally, a non-zero exit status causes the Task to fail. This flag allows execution of other Runnables to continue instead.
  final bool? ignoreExitStatus;

  /// Labels for this Runnable.
  final Map<String, String>? labels;

  /// Script runnable.
  final Script? script;

  /// Timeout for this Runnable.
  final String? timeout;

  /// Creates a new [Runnable].
  /// [alwaysRun] By default, after a Runnable fails, no further Runnable are executed. This flag indicates that this Runnable must be run even if the Task has already failed. This is useful for Runnables that copy output files off of the VM or for debugging. The always_run flag does not override the Task's overall max_run_duration. If the max_run_duration has expired then no further Runnables will execute, not even always_run Runnables.
  /// [background] This flag allows a Runnable to continue running in the background while the Task executes subsequent Runnables. This is useful to provide services to other Runnables (or to provide debugging support tools like SSH servers).
  /// [barrier] Barrier runnable.
  /// [container] Container runnable.
  /// [displayName] Optional. DisplayName is an optional field that can be provided by the caller. If provided, it will be used in logs and other outputs to identify the script, making it easier for users to understand the logs. If not provided the index of the runnable will be used for outputs.
  /// [environment] Environment variables for this Runnable (overrides variables set for the whole Task or TaskGroup).
  /// [ignoreExitStatus] Normally, a non-zero exit status causes the Task to fail. This flag allows execution of other Runnables to continue instead.
  /// [labels] Labels for this Runnable.
  /// [script] Script runnable.
  /// [timeout] Timeout for this Runnable.
  Runnable({
    this.alwaysRun,
    this.background,
    this.barrier,
    this.container,
    this.displayName,
    this.environment,
    this.ignoreExitStatus,
    this.labels,
    this.script,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysRun': ?alwaysRun,
      'background': ?background,
      'barrier': ?barrier == null ? null : barrier!.toMap(),
      'container': ?container == null ? null : container!.toMap(),
      'displayName': ?displayName,
      'environment': ?environment == null ? null : environment!.toMap(),
      'ignoreExitStatus': ?ignoreExitStatus,
      'labels': ?labels,
      'script': ?script == null ? null : script!.toMap(),
      'timeout': ?timeout,
    };
  }

  factory Runnable.fromMap(Map<String, dynamic> map) {
    return Runnable(
      alwaysRun: map['alwaysRun'] == null ? null : map['alwaysRun'] as bool,
      background: map['background'] == null ? null : map['background'] as bool,
      barrier: map['barrier'] == null
          ? null
          : Barrier.fromMap((map['barrier'] as Map).cast<String, dynamic>()),
      container: map['container'] == null
          ? null
          : Container.fromMap(
              (map['container'] as Map).cast<String, dynamic>(),
            ),
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      environment: map['environment'] == null
          ? null
          : Environment.fromMap(
              (map['environment'] as Map).cast<String, dynamic>(),
            ),
      ignoreExitStatus: map['ignoreExitStatus'] == null
          ? null
          : map['ignoreExitStatus'] as bool,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      script: map['script'] == null
          ? null
          : Script.fromMap((map['script'] as Map).cast<String, dynamic>()),
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}
