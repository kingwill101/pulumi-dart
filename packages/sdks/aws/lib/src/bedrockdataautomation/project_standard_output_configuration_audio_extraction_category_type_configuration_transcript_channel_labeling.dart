// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectStandardOutputConfigurationAudioExtractionCategoryTypeConfigurationTranscriptChannelLabeling {
  /// Whether to label audio channels. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> state;

  /// Creates a new [ProjectStandardOutputConfigurationAudioExtractionCategoryTypeConfigurationTranscriptChannelLabeling].
  /// [state] Whether to label audio channels. Valid values: `ENABLED`, `DISABLED`.
  const ProjectStandardOutputConfigurationAudioExtractionCategoryTypeConfigurationTranscriptChannelLabeling({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory ProjectStandardOutputConfigurationAudioExtractionCategoryTypeConfigurationTranscriptChannelLabeling.fromMap(Map<String, dynamic> map) {
    return ProjectStandardOutputConfigurationAudioExtractionCategoryTypeConfigurationTranscriptChannelLabeling(
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
