// ignore_for_file: unused_element, unnecessary_cast

class WorkstationConfigHostGceInstanceAccelerator {
  /// Number of accelerator cards exposed to the instance.
  final int count;

  /// Type of accelerator resource to attach to the instance, for example, "nvidia-tesla-p100".
  final String type;

  WorkstationConfigHostGceInstanceAccelerator({
    required this.count,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['type'] = type;
    return map;
  }

  factory WorkstationConfigHostGceInstanceAccelerator.fromMap(
      Map<String, dynamic> map) {
    return WorkstationConfigHostGceInstanceAccelerator(
      count: map['count'] as int,
      type: map['type'] as String,
    );
  }
}
