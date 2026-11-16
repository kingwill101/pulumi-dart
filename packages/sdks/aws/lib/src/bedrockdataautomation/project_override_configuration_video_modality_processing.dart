// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectOverrideConfigurationVideoModalityProcessing {
  /// Whether to process files of this modality. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> state;

  /// Creates a new [ProjectOverrideConfigurationVideoModalityProcessing].
  /// [state] Whether to process files of this modality. Valid values: `ENABLED`, `DISABLED`.
  const ProjectOverrideConfigurationVideoModalityProcessing({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory ProjectOverrideConfigurationVideoModalityProcessing.fromMap(Map<String, dynamic> map) {
    return ProjectOverrideConfigurationVideoModalityProcessing(
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
