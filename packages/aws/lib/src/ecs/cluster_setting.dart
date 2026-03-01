// ignore_for_file: unused_element, unnecessary_cast

class ClusterSetting {
  /// Name of the setting to manage. Valid values: `containerInsights`.
  final String name;

  /// Value to assign to the setting. Valid values: `enhanced`, `enabled`, `disabled`.
  final String value;

  /// Creates a new [ClusterSetting].
  /// [name] Name of the setting to manage. Valid values: `containerInsights`.
  /// [value] Value to assign to the setting. Valid values: `enhanced`, `enabled`, `disabled`.
  ClusterSetting({required this.name, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory ClusterSetting.fromMap(Map<String, dynamic> map) {
    return ClusterSetting(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
