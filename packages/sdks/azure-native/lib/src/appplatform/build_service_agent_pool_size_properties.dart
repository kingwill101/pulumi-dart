// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Build service agent pool size properties
class BuildServiceAgentPoolSizeProperties {
  /// The name of build service agent pool size
  final pulumi.Input<String>? name;

  /// Creates a new [BuildServiceAgentPoolSizeProperties].
  /// [name] The name of build service agent pool size
  const BuildServiceAgentPoolSizeProperties({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory BuildServiceAgentPoolSizeProperties.fromMap(Map<String, dynamic> map) {
    return BuildServiceAgentPoolSizeProperties(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

