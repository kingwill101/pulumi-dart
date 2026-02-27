// ignore_for_file: unused_element, unnecessary_cast

class StandardAppVersionManualScaling {
  /// Number of instances to assign to the service at the start.
  /// **Note:** When managing the number of instances at runtime through the App Engine Admin API or the (now deprecated) Python 2
  /// Modules API set_num_instances() you must use `lifecycle.ignore_changes = ["manual_scaling"[0].instances]` to prevent drift detection.
  final int instances;

  StandardAppVersionManualScaling({
    required this.instances,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instances'] = instances;
    return map;
  }

  factory StandardAppVersionManualScaling.fromMap(Map<String, dynamic> map) {
    return StandardAppVersionManualScaling(
      instances: map['instances'] as int,
    );
  }
}
