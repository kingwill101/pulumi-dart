// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectStandardOutputConfigurationDocumentExtractionBoundingBox {
  /// Whether to include bounding boxes. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> state;

  /// Creates a new [ProjectStandardOutputConfigurationDocumentExtractionBoundingBox].
  /// [state] Whether to include bounding boxes. Valid values: `ENABLED`, `DISABLED`.
  const ProjectStandardOutputConfigurationDocumentExtractionBoundingBox({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory ProjectStandardOutputConfigurationDocumentExtractionBoundingBox.fromMap(Map<String, dynamic> map) {
    return ProjectStandardOutputConfigurationDocumentExtractionBoundingBox(
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
