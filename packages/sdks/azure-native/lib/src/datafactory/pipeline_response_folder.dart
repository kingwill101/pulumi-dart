// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The folder that this Pipeline is in. If not specified, Pipeline will appear at the root level.
class PipelineResponseFolder {
  /// The name of the folder that this Pipeline is in.
  final pulumi.Input<String>? name;

  /// Creates a new [PipelineResponseFolder].
  /// [name] The name of the folder that this Pipeline is in.
  PipelineResponseFolder({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory PipelineResponseFolder.fromMap(Map<String, dynamic> map) {
    return PipelineResponseFolder(
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

