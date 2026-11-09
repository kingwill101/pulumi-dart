// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_standard_output_configuration_image_extraction_bounding_box.dart';
import 'project_standard_output_configuration_image_extraction_category.dart';

class ProjectStandardOutputConfigurationImageExtraction {
  /// Whether to include bounding boxes. See `boundingBox` Block below.
  final pulumi.Input<ProjectStandardOutputConfigurationImageExtractionBoundingBox> boundingBox;
  /// Categories to extract. See `video.category` Block below.
  final pulumi.Input<ProjectStandardOutputConfigurationImageExtractionCategory> category;

  /// Creates a new [ProjectStandardOutputConfigurationImageExtraction].
  /// [boundingBox] Whether to include bounding boxes. See `boundingBox` Block below.
  /// [category] Categories to extract. See `video.category` Block below.
  const ProjectStandardOutputConfigurationImageExtraction({
    required this.boundingBox,
    required this.category,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boundingBox': pulumi.Input.mapInputValue<ProjectStandardOutputConfigurationImageExtractionBoundingBox, Map<String, dynamic>>(boundingBox, (value) => value.toMap()),
      'category': pulumi.Input.mapInputValue<ProjectStandardOutputConfigurationImageExtractionCategory, Map<String, dynamic>>(category, (value) => value.toMap()),
    };
  }

  factory ProjectStandardOutputConfigurationImageExtraction.fromMap(Map<String, dynamic> map) {
    return ProjectStandardOutputConfigurationImageExtraction(
      boundingBox: pulumi.Input.fromValue(ProjectStandardOutputConfigurationImageExtractionBoundingBox.fromMap((map['boundingBox']! as Map).cast<String, dynamic>())),
      category: pulumi.Input.fromValue(ProjectStandardOutputConfigurationImageExtractionCategory.fromMap((map['category']! as Map).cast<String, dynamic>())),
    );
  }
}
