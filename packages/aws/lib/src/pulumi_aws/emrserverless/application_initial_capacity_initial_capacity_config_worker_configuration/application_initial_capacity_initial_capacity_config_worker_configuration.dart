// ignore_for_file: unused_element, unnecessary_cast

class ApplicationInitialCapacityInitialCapacityConfigWorkerConfiguration {
  /// The CPU requirements for every worker instance of the worker type.
  final String cpu;

  /// The disk requirements for every worker instance of the worker type.
  final String? disk;

  /// The memory requirements for every worker instance of the worker type.
  final String memory;

  ApplicationInitialCapacityInitialCapacityConfigWorkerConfiguration({
    required this.cpu,
    this.disk,
    required this.memory,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cpu'] = cpu;
    final diskValue = disk;
    if (diskValue != null) {
      map['disk'] = diskValue;
    }
    map['memory'] = memory;
    return map;
  }

  factory ApplicationInitialCapacityInitialCapacityConfigWorkerConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ApplicationInitialCapacityInitialCapacityConfigWorkerConfiguration(
      cpu: map['cpu'] as String,
      disk: map['disk'] == null ? null : map['disk'] as String,
      memory: map['memory'] as String,
    );
  }
}
