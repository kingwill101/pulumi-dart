// ignore_for_file: unused_element, unnecessary_cast

class WorkstationConfigHostGceInstanceBoostConfigAccelerator {
  /// Number of accelerator cards exposed to the instance.
  final int count;

  /// Type of accelerator resource to attach to the instance, for example, "nvidia-tesla-p100".
  final String type;

  /// Creates a new [WorkstationConfigHostGceInstanceBoostConfigAccelerator].
  /// [count] Number of accelerator cards exposed to the instance.
  /// [type] Type of accelerator resource to attach to the instance, for example, "nvidia-tesla-p100".
  WorkstationConfigHostGceInstanceBoostConfigAccelerator({
    required this.count,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['type'] = type;
    return map;
  }

  factory WorkstationConfigHostGceInstanceBoostConfigAccelerator.fromMap(
      Map<String, dynamic> map) {
    return WorkstationConfigHostGceInstanceBoostConfigAccelerator(
      count: map['count'] as int,
      type: map['type'] as String,
    );
  }
}
