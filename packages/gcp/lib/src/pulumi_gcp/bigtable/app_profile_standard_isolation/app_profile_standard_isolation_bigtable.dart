// ignore_for_file: unused_element, unnecessary_cast

class AppProfileStandardIsolationBigtable {
  /// The priority of requests sent using this app profile.
  /// Possible values are: `PRIORITY_LOW`, `PRIORITY_MEDIUM`, `PRIORITY_HIGH`.
  final String priority;

  AppProfileStandardIsolationBigtable({
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['priority'] = priority;
    return map;
  }

  factory AppProfileStandardIsolationBigtable.fromMap(
      Map<String, dynamic> map) {
    return AppProfileStandardIsolationBigtable(
      priority: map['priority'] as String,
    );
  }
}
