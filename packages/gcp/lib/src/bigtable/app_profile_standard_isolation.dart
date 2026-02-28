// ignore_for_file: unused_element, unnecessary_cast

class AppProfileStandardIsolation {
  /// The priority of requests sent using this app profile.
  /// Possible values are: `PRIORITY_LOW`, `PRIORITY_MEDIUM`, `PRIORITY_HIGH`.
  final String priority;

  /// Creates a new [AppProfileStandardIsolation].
  /// [priority] The priority of requests sent using this app profile.
  AppProfileStandardIsolation({
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['priority'] = priority;
    return map;
  }

  factory AppProfileStandardIsolation.fromMap(Map<String, dynamic> map) {
    return AppProfileStandardIsolation(
      priority: map['priority'] as String,
    );
  }
}
