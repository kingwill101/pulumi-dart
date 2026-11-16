// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_standard_output_configuration_video_extraction_bounding_box.dart';
import 'project_standard_output_configuration_video_extraction_category.dart';

class ProjectStandardOutputConfigurationVideoExtraction {
  /// Whether to include bounding boxes. See `boundingBox` Block below.
  final pulumi.Input<ProjectStandardOutputConfigurationVideoExtractionBoundingBox> boundingBox;
  /// Categories to extract. See `video.category` Block below.
  final pulumi.Input<ProjectStandardOutputConfigurationVideoExtractionCategory> category;

  /// Creates a new [ProjectStandardOutputConfigurationVideoExtraction].
  /// [boundingBox] Whether to include bounding boxes. See `boundingBox` Block below.
  /// [category] Categories to extract. See `video.category` Block below.
  const ProjectStandardOutputConfigurationVideoExtraction({
    required this.boundingBox,
    required this.category,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boundingBox': pulumi.Input.mapInputValue<ProjectStandardOutputConfigurationVideoExtractionBoundingBox, Map<String, dynamic>>(boundingBox, (value) => value.toMap()),
      'category': pulumi.Input.mapInputValue<ProjectStandardOutputConfigurationVideoExtractionCategory, Map<String, dynamic>>(category, (value) => value.toMap()),
    };
  }

  factory ProjectStandardOutputConfigurationVideoExtraction.fromMap(Map<String, dynamic> map) {
    return ProjectStandardOutputConfigurationVideoExtraction(
      boundingBox: pulumi.Input.fromValue(ProjectStandardOutputConfigurationVideoExtractionBoundingBox.fromMap((map['boundingBox']! as Map).cast<String, dynamic>())),
      category: pulumi.Input.fromValue(ProjectStandardOutputConfigurationVideoExtractionCategory.fromMap((map['category']! as Map).cast<String, dynamic>())),
    );
  }
}
