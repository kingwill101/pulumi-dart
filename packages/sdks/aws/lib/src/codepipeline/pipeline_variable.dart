// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineVariable {
  /// The default value of a pipeline-level variable.
  final pulumi.Input<String>? defaultValue;
  /// The description of a pipeline-level variable.
  final pulumi.Input<String>? description;
  /// The name of a pipeline-level variable.
  final pulumi.Input<String> name;

  /// Creates a new [PipelineVariable].
  /// [defaultValue] The default value of a pipeline-level variable.
  /// [description] The description of a pipeline-level variable.
  /// [name] The name of a pipeline-level variable.
  PipelineVariable({
    this.defaultValue,
    this.description,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': ?defaultValue,
      'description': ?description,
      'name': name,
    };
  }

  factory PipelineVariable.fromMap(Map<String, dynamic> map) {
    return PipelineVariable(
      defaultValue: map['defaultValue'] == null ? null : ((map['defaultValue'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      name: (map['name'] as String).input(),
    );
  }
}

