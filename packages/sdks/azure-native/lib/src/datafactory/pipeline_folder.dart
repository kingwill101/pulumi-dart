// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The folder that this Pipeline is in. If not specified, Pipeline will appear at the root level.
class PipelineFolder {
  /// The name of the folder that this Pipeline is in.
  final pulumi.Input<String>? name;

  /// Creates a new [PipelineFolder].
  /// [name] The name of the folder that this Pipeline is in.
  const PipelineFolder({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory PipelineFolder.fromMap(Map<String, dynamic> map) {
    return PipelineFolder(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

