// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_standard_output_configuration_document_extraction_bounding_box.dart';
import 'project_standard_output_configuration_document_extraction_granularity.dart';

class ProjectStandardOutputConfigurationDocumentExtraction {
  /// Whether to include bounding boxes. See `boundingBox` Block below.
  final pulumi.Input<ProjectStandardOutputConfigurationDocumentExtractionBoundingBox> boundingBox;
  /// Extraction granularity. See `granularity` Block below.
  final pulumi.Input<ProjectStandardOutputConfigurationDocumentExtractionGranularity> granularity;

  /// Creates a new [ProjectStandardOutputConfigurationDocumentExtraction].
  /// [boundingBox] Whether to include bounding boxes. See `boundingBox` Block below.
  /// [granularity] Extraction granularity. See `granularity` Block below.
  const ProjectStandardOutputConfigurationDocumentExtraction({
    required this.boundingBox,
    required this.granularity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boundingBox': pulumi.Input.mapInputValue<ProjectStandardOutputConfigurationDocumentExtractionBoundingBox, Map<String, dynamic>>(boundingBox, (value) => value.toMap()),
      'granularity': pulumi.Input.mapInputValue<ProjectStandardOutputConfigurationDocumentExtractionGranularity, Map<String, dynamic>>(granularity, (value) => value.toMap()),
    };
  }

  factory ProjectStandardOutputConfigurationDocumentExtraction.fromMap(Map<String, dynamic> map) {
    return ProjectStandardOutputConfigurationDocumentExtraction(
      boundingBox: pulumi.Input.fromValue(ProjectStandardOutputConfigurationDocumentExtractionBoundingBox.fromMap((map['boundingBox']! as Map).cast<String, dynamic>())),
      granularity: pulumi.Input.fromValue(ProjectStandardOutputConfigurationDocumentExtractionGranularity.fromMap((map['granularity']! as Map).cast<String, dynamic>())),
    );
  }
}
