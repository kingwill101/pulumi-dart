// ignore_for_file: unused_element, unnecessary_cast


class SpringbootappsPropertiesResponseInstances {
  /// The instance count of this app instance
  final int? instanceCount;
  /// The jvm heap memory allocated of this app instance
  final int? jvmMemoryInMB;
  /// The machine ARM resource Id of this app instance
  final String machineArmId;

  /// Creates a new [SpringbootappsPropertiesResponseInstances].
  /// [instanceCount] The instance count of this app instance
  /// [jvmMemoryInMB] The jvm heap memory allocated of this app instance
  /// [machineArmId] The machine ARM resource Id of this app instance
  SpringbootappsPropertiesResponseInstances({
    this.instanceCount,
    this.jvmMemoryInMB,
    required this.machineArmId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceCount': ?instanceCount,
      'jvmMemoryInMB': ?jvmMemoryInMB,
      'machineArmId': machineArmId,
    };
  }

  factory SpringbootappsPropertiesResponseInstances.fromMap(Map<String, dynamic> map) {
    return SpringbootappsPropertiesResponseInstances(
      instanceCount: map['instanceCount'] == null ? null : map['instanceCount'] as int,
      jvmMemoryInMB: map['jvmMemoryInMB'] == null ? null : map['jvmMemoryInMB'] as int,
      machineArmId: map['machineArmId'] as String,
    );
  }
}

