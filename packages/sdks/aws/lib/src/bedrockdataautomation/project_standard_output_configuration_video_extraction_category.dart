// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectStandardOutputConfigurationVideoExtractionCategory {
  final pulumi.Input<String> state;
  final pulumi.Input<List<String>?>? types;

  /// Creates a new [ProjectStandardOutputConfigurationVideoExtractionCategory].
  /// [state] Required.
  /// [types] Optional.
  const ProjectStandardOutputConfigurationVideoExtractionCategory({
    required this.state,
    this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
      'types': ?types,
    };
  }

  factory ProjectStandardOutputConfigurationVideoExtractionCategory.fromMap(Map<String, dynamic> map) {
    return ProjectStandardOutputConfigurationVideoExtractionCategory(
      state: pulumi.Input.fromValue(map['state'] as String),
      types: (() { final guardedValue = map['types']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
