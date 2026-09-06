// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Topics input config
class TopicsInputConfig {
  /// Name of the topic input config
  final pulumi.Input<String?>? name;
  /// Value of the topic input config
  final pulumi.Input<String?>? value;

  /// Creates a new [TopicsInputConfig].
  /// [name] Name of the topic input config
  /// [value] Value of the topic input config
  const TopicsInputConfig({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory TopicsInputConfig.fromMap(Map<String, dynamic> map) {
    return TopicsInputConfig(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
