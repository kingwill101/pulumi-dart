// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Topics input config
class TopicsInputConfigResponse {
  /// Name of the topic input config
  final pulumi.Input<String>? name;
  /// Value of the topic input config
  final pulumi.Input<String>? value;

  /// Creates a new [TopicsInputConfigResponse].
  /// [name] Name of the topic input config
  /// [value] Value of the topic input config
  const TopicsInputConfigResponse({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory TopicsInputConfigResponse.fromMap(Map<String, dynamic> map) {
    return TopicsInputConfigResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
