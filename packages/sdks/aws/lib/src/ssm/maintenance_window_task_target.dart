// ignore_for_file: unused_element, unnecessary_cast


class MaintenanceWindowTaskTarget {
  final String key;
  /// The array of strings.
  final List<String> values;

  /// Creates a new [MaintenanceWindowTaskTarget].
  /// [key] Required.
  /// [values] The array of strings.
  MaintenanceWindowTaskTarget({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory MaintenanceWindowTaskTarget.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowTaskTarget(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

