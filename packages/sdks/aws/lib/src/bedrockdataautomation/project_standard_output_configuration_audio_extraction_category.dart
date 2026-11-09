// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_standard_output_configuration_audio_extraction_category_type_configuration.dart';

class ProjectStandardOutputConfigurationAudioExtractionCategory {
  final pulumi.Input<String> state;
  /// Per-category type settings. See `typeConfiguration` Block below.
  final pulumi.Input<ProjectStandardOutputConfigurationAudioExtractionCategoryTypeConfiguration?>? typeConfiguration;
  final pulumi.Input<List<String>?>? types;

  /// Creates a new [ProjectStandardOutputConfigurationAudioExtractionCategory].
  /// [state] Required.
  /// [typeConfiguration] Per-category type settings. See `typeConfiguration` Block below.
  /// [types] Optional.
  const ProjectStandardOutputConfigurationAudioExtractionCategory({
    required this.state,
    this.typeConfiguration,
    this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
      'typeConfiguration': ?pulumi.Input.mapOptionalInputValue<ProjectStandardOutputConfigurationAudioExtractionCategoryTypeConfiguration, Map<String, dynamic>>(typeConfiguration, (value) => value.toMap()),
      'types': ?types,
    };
  }

  factory ProjectStandardOutputConfigurationAudioExtractionCategory.fromMap(Map<String, dynamic> map) {
    return ProjectStandardOutputConfigurationAudioExtractionCategory(
      state: pulumi.Input.fromValue(map['state'] as String),
      typeConfiguration: (() { final guardedValue = map['typeConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectStandardOutputConfigurationAudioExtractionCategoryTypeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      types: (() { final guardedValue = map['types']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
