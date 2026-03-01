// ignore_for_file: unused_element, unnecessary_cast

class ApplicationInitialCapacityInitialCapacityConfigWorkerConfiguration {
  /// The CPU requirements for every worker instance of the worker type.
  final String cpu;

  /// The disk requirements for every worker instance of the worker type.
  final String? disk;

  /// The memory requirements for every worker instance of the worker type.
  final String memory;

  /// Creates a new [ApplicationInitialCapacityInitialCapacityConfigWorkerConfiguration].
  /// [cpu] The CPU requirements for every worker instance of the worker type.
  /// [disk] The disk requirements for every worker instance of the worker type.
  /// [memory] The memory requirements for every worker instance of the worker type.
  ApplicationInitialCapacityInitialCapacityConfigWorkerConfiguration({
    required this.cpu,
    this.disk,
    required this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cpu': cpu, 'disk': ?disk, 'memory': memory};
  }

  factory ApplicationInitialCapacityInitialCapacityConfigWorkerConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationInitialCapacityInitialCapacityConfigWorkerConfiguration(
      cpu: map['cpu'] as String,
      disk: map['disk'] == null ? null : map['disk'] as String,
      memory: map['memory'] as String,
    );
  }
}
