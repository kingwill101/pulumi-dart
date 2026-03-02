// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineRunSourceProperties {
  /// The name of the source.
  final pulumi.Input<String>? name;
  /// The type of the source.
  final pulumi.Input<String>? type;

  /// Creates a new [PipelineRunSourceProperties].
  /// [name] The name of the source.
  /// [type] The type of the source.
  PipelineRunSourceProperties({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory PipelineRunSourceProperties.fromMap(Map<String, dynamic> map) {
    return PipelineRunSourceProperties(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

