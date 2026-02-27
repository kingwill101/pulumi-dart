// ignore_for_file: unused_element, unnecessary_cast

class ClusterSetting {
  /// Name of the setting to manage. Valid values: `containerInsights`.
  final String name;

  /// Value to assign to the setting. Valid values: `enhanced`, `enabled`, `disabled`.
  final String value;

  ClusterSetting({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory ClusterSetting.fromMap(Map<String, dynamic> map) {
    return ClusterSetting(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
