// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_standard_output_configuration_audio_extraction_category.dart';

class ProjectStandardOutputConfigurationAudioExtraction {
  /// Categories to extract. See `video.category` Block below.
  final pulumi.Input<ProjectStandardOutputConfigurationAudioExtractionCategory> category;

  /// Creates a new [ProjectStandardOutputConfigurationAudioExtraction].
  /// [category] Categories to extract. See `video.category` Block below.
  const ProjectStandardOutputConfigurationAudioExtraction({
    required this.category,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': pulumi.Input.mapInputValue<ProjectStandardOutputConfigurationAudioExtractionCategory, Map<String, dynamic>>(category, (value) => value.toMap()),
    };
  }

  factory ProjectStandardOutputConfigurationAudioExtraction.fromMap(Map<String, dynamic> map) {
    return ProjectStandardOutputConfigurationAudioExtraction(
      category: pulumi.Input.fromValue(ProjectStandardOutputConfigurationAudioExtractionCategory.fromMap((map['category']! as Map).cast<String, dynamic>())),
    );
  }
}
