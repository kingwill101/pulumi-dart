// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationInitialCapacityInitialCapacityConfigWorkerConfiguration {
  /// The CPU requirements for every worker instance of the worker type.
  final pulumi.Input<String> cpu;
  /// The disk requirements for every worker instance of the worker type.
  final pulumi.Input<String>? disk;
  /// The memory requirements for every worker instance of the worker type.
  final pulumi.Input<String> memory;

  /// Creates a new [ApplicationInitialCapacityInitialCapacityConfigWorkerConfiguration].
  /// [cpu] The CPU requirements for every worker instance of the worker type.
  /// [disk] The disk requirements for every worker instance of the worker type.
  /// [memory] The memory requirements for every worker instance of the worker type.
  const ApplicationInitialCapacityInitialCapacityConfigWorkerConfiguration({
    required this.cpu,
    this.disk,
    required this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': cpu,
      'disk': ?disk,
      'memory': memory,
    };
  }

  factory ApplicationInitialCapacityInitialCapacityConfigWorkerConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationInitialCapacityInitialCapacityConfigWorkerConfiguration(
      cpu: pulumi.Input.fromValue(map['cpu'] as String),
      disk: (() { final guardedValue = map['disk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memory: pulumi.Input.fromValue(map['memory'] as String),
    );
  }
}
