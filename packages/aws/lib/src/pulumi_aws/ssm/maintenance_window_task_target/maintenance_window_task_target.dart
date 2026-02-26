// ignore_for_file: unused_element, unnecessary_cast

class MaintenanceWindowTaskTarget {
  final String key;

  /// The array of strings.
  final List<String> values;

  MaintenanceWindowTaskTarget({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['values'] = values;
    return map;
  }

  factory MaintenanceWindowTaskTarget.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowTaskTarget(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
