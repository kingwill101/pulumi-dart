// ignore_for_file: unused_element, unnecessary_cast

class AppProfileStandardIsolation2 {
  /// The priority of requests sent using this app profile.
  /// Possible values are: `PRIORITY_LOW`, `PRIORITY_MEDIUM`, `PRIORITY_HIGH`.
  final String priority;

  AppProfileStandardIsolation2({
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['priority'] = priority;
    return map;
  }

  factory AppProfileStandardIsolation2.fromMap(Map<String, dynamic> map) {
    return AppProfileStandardIsolation2(
      priority: map['priority'] as String,
    );
  }
}
