// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectOverrideConfigurationImageModalityProcessing {
  /// Whether to process files of this modality. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> state;

  /// Creates a new [ProjectOverrideConfigurationImageModalityProcessing].
  /// [state] Whether to process files of this modality. Valid values: `ENABLED`, `DISABLED`.
  const ProjectOverrideConfigurationImageModalityProcessing({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory ProjectOverrideConfigurationImageModalityProcessing.fromMap(Map<String, dynamic> map) {
    return ProjectOverrideConfigurationImageModalityProcessing(
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
