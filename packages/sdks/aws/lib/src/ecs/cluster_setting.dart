// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterSetting {
  /// Name of the setting to manage. Valid values: `containerInsights`.
  final pulumi.Input<String> name;
  /// Value to assign to the setting. Valid values: `enhanced`, `enabled`, `disabled`.
  final pulumi.Input<String> value;

  /// Creates a new [ClusterSetting].
  /// [name] Name of the setting to manage. Valid values: `containerInsights`.
  /// [value] Value to assign to the setting. Valid values: `enhanced`, `enabled`, `disabled`.
  ClusterSetting({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory ClusterSetting.fromMap(Map<String, dynamic> map) {
    return ClusterSetting(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

