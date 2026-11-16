// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectStandardOutputConfigurationVideoExtractionBoundingBox {
  /// Whether to include bounding boxes. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> state;

  /// Creates a new [ProjectStandardOutputConfigurationVideoExtractionBoundingBox].
  /// [state] Whether to include bounding boxes. Valid values: `ENABLED`, `DISABLED`.
  const ProjectStandardOutputConfigurationVideoExtractionBoundingBox({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory ProjectStandardOutputConfigurationVideoExtractionBoundingBox.fromMap(Map<String, dynamic> map) {
    return ProjectStandardOutputConfigurationVideoExtractionBoundingBox(
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
