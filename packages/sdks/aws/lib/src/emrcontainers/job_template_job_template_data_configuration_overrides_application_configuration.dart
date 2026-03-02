// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_job_template_data_configuration_overrides_application_configuration_configuration.dart';

class JobTemplateJobTemplateDataConfigurationOverridesApplicationConfiguration {
  /// The classification within a configuration.
  final pulumi.Input<String> classification;
  /// A list of additional configurations to apply within a configuration object.
  final pulumi.Input<List<JobTemplateJobTemplateDataConfigurationOverridesApplicationConfigurationConfiguration>>? configurations;
  /// A set of properties specified within a configuration classification.
  final pulumi.Input<Map<String, String>>? properties;

  /// Creates a new [JobTemplateJobTemplateDataConfigurationOverridesApplicationConfiguration].
  /// [classification] The classification within a configuration.
  /// [configurations] A list of additional configurations to apply within a configuration object.
  /// [properties] A set of properties specified within a configuration classification.
  JobTemplateJobTemplateDataConfigurationOverridesApplicationConfiguration({
    required this.classification,
    this.configurations,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classification': classification,
      'configurations': ?pulumi.Input.mapOptionalInputValue<List<JobTemplateJobTemplateDataConfigurationOverridesApplicationConfigurationConfiguration>, List<Map<String, dynamic>>>(configurations, (value) => pulumi.Input.encodeList<JobTemplateJobTemplateDataConfigurationOverridesApplicationConfigurationConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'properties': ?properties,
    };
  }

  factory JobTemplateJobTemplateDataConfigurationOverridesApplicationConfiguration.fromMap(Map<String, dynamic> map) {
    return JobTemplateJobTemplateDataConfigurationOverridesApplicationConfiguration(
      classification: (map['classification'] as String).input(),
      configurations: map['configurations'] == null ? null : ((pulumi.Input.decodeList<JobTemplateJobTemplateDataConfigurationOverridesApplicationConfigurationConfiguration>(map['configurations']!, (value) => JobTemplateJobTemplateDataConfigurationOverridesApplicationConfigurationConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      properties: map['properties'] == null ? null : (((map['properties'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

