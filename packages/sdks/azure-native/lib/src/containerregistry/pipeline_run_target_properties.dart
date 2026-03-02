// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineRunTargetProperties {
  /// The name of the target.
  final pulumi.Input<String>? name;
  /// The type of the target.
  final pulumi.Input<String>? type;

  /// Creates a new [PipelineRunTargetProperties].
  /// [name] The name of the target.
  /// [type] The type of the target.
  PipelineRunTargetProperties({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory PipelineRunTargetProperties.fromMap(Map<String, dynamic> map) {
    return PipelineRunTargetProperties(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

