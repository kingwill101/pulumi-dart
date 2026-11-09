// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectStandardOutputConfigurationImageExtractionBoundingBox {
  /// Whether to include bounding boxes. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> state;

  /// Creates a new [ProjectStandardOutputConfigurationImageExtractionBoundingBox].
  /// [state] Whether to include bounding boxes. Valid values: `ENABLED`, `DISABLED`.
  const ProjectStandardOutputConfigurationImageExtractionBoundingBox({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory ProjectStandardOutputConfigurationImageExtractionBoundingBox.fromMap(Map<String, dynamic> map) {
    return ProjectStandardOutputConfigurationImageExtractionBoundingBox(
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
