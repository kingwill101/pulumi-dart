// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_standard_output_configuration_audio_extraction_category_type_configuration_transcript_channel_labeling.dart';
import 'project_standard_output_configuration_audio_extraction_category_type_configuration_transcript_speaker_labeling.dart';

class ProjectStandardOutputConfigurationAudioExtractionCategoryTypeConfigurationTranscript {
  /// Whether to label audio channels. See `channelLabeling` Block below.
  final pulumi.Input<ProjectStandardOutputConfigurationAudioExtractionCategoryTypeConfigurationTranscriptChannelLabeling?>? channelLabeling;
  /// Whether to label speakers. See `speakerLabeling` Block below.
  final pulumi.Input<ProjectStandardOutputConfigurationAudioExtractionCategoryTypeConfigurationTranscriptSpeakerLabeling?>? speakerLabeling;

  /// Creates a new [ProjectStandardOutputConfigurationAudioExtractionCategoryTypeConfigurationTranscript].
  /// [channelLabeling] Whether to label audio channels. See `channelLabeling` Block below.
  /// [speakerLabeling] Whether to label speakers. See `speakerLabeling` Block below.
  const ProjectStandardOutputConfigurationAudioExtractionCategoryTypeConfigurationTranscript({
    this.channelLabeling,
    this.speakerLabeling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelLabeling': ?pulumi.Input.mapOptionalInputValue<ProjectStandardOutputConfigurationAudioExtractionCategoryTypeConfigurationTranscriptChannelLabeling, Map<String, dynamic>>(channelLabeling, (value) => value.toMap()),
      'speakerLabeling': ?pulumi.Input.mapOptionalInputValue<ProjectStandardOutputConfigurationAudioExtractionCategoryTypeConfigurationTranscriptSpeakerLabeling, Map<String, dynamic>>(speakerLabeling, (value) => value.toMap()),
    };
  }

  factory ProjectStandardOutputConfigurationAudioExtractionCategoryTypeConfigurationTranscript.fromMap(Map<String, dynamic> map) {
    return ProjectStandardOutputConfigurationAudioExtractionCategoryTypeConfigurationTranscript(
      channelLabeling: (() { final guardedValue = map['channelLabeling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectStandardOutputConfigurationAudioExtractionCategoryTypeConfigurationTranscriptChannelLabeling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      speakerLabeling: (() { final guardedValue = map['speakerLabeling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectStandardOutputConfigurationAudioExtractionCategoryTypeConfigurationTranscriptSpeakerLabeling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
