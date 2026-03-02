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
  TopicsInputConfigResponse({
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
      name: map['name'] == null ? null : (map['name'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

