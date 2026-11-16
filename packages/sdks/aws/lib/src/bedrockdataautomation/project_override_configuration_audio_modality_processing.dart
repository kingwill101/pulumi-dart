// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectOverrideConfigurationAudioModalityProcessing {
  /// Whether to process files of this modality. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> state;

  /// Creates a new [ProjectOverrideConfigurationAudioModalityProcessing].
  /// [state] Whether to process files of this modality. Valid values: `ENABLED`, `DISABLED`.
  const ProjectOverrideConfigurationAudioModalityProcessing({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory ProjectOverrideConfigurationAudioModalityProcessing.fromMap(Map<String, dynamic> map) {
    return ProjectOverrideConfigurationAudioModalityProcessing(
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
