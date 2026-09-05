// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineStageActionOutputArtifactsForComputeAction {
  /// A list of the files to associate with the output artifact that will be exported from the compute action.
  final pulumi.Input<List<String>?>? files;
  /// The name of the output artifact.
  final pulumi.Input<String> name;

  /// Creates a new [PipelineStageActionOutputArtifactsForComputeAction].
  /// [files] A list of the files to associate with the output artifact that will be exported from the compute action.
  /// [name] The name of the output artifact.
  const PipelineStageActionOutputArtifactsForComputeAction({
    this.files,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'files': ?files,
      'name': name,
    };
  }

  factory PipelineStageActionOutputArtifactsForComputeAction.fromMap(Map<String, dynamic> map) {
    return PipelineStageActionOutputArtifactsForComputeAction(
      files: (() { final guardedValue = map['files']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
