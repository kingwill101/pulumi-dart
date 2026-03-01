// ignore_for_file: unused_element, unnecessary_cast


/// The folder that this Pipeline is in. If not specified, Pipeline will appear at the root level.
class PipelineFolder {
  /// The name of the folder that this Pipeline is in.
  final String? name;

  /// Creates a new [PipelineFolder].
  /// [name] The name of the folder that this Pipeline is in.
  PipelineFolder({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory PipelineFolder.fromMap(Map<String, dynamic> map) {
    return PipelineFolder(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

