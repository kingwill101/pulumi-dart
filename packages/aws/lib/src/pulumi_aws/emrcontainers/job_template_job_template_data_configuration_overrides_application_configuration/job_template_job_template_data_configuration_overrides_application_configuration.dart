// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../job_template_job_template_data_configuration_overrides_application_configuration_configuration/job_template_job_template_data_configuration_overrides_application_configuration_configuration.dart';

class JobTemplateJobTemplateDataConfigurationOverridesApplicationConfiguration {
  /// The classification within a configuration.
  final String classification;

  /// A list of additional configurations to apply within a configuration object.
  final List<
          JobTemplateJobTemplateDataConfigurationOverridesApplicationConfigurationConfiguration>?
      configurations;

  /// A set of properties specified within a configuration classification.
  final Map<String, String>? properties;

  JobTemplateJobTemplateDataConfigurationOverridesApplicationConfiguration({
    required this.classification,
    this.configurations,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['classification'] = classification;
    final configurationsValue = configurations;
    if (configurationsValue != null) {
      map['configurations'] = pulumi.Input.encodeList<
          JobTemplateJobTemplateDataConfigurationOverridesApplicationConfigurationConfiguration,
          Map<String, dynamic>>(configurationsValue, (value) => value.toMap());
    }
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = propertiesValue;
    }
    return map;
  }

  factory JobTemplateJobTemplateDataConfigurationOverridesApplicationConfiguration.fromMap(
      Map<String, dynamic> map) {
    return JobTemplateJobTemplateDataConfigurationOverridesApplicationConfiguration(
      classification: map['classification'] as String,
      configurations: map['configurations'] == null
          ? null
          : pulumi.Input.decodeList<
                  JobTemplateJobTemplateDataConfigurationOverridesApplicationConfigurationConfiguration>(
              map['configurations'],
              (value) =>
                  JobTemplateJobTemplateDataConfigurationOverridesApplicationConfigurationConfiguration
                      .fromMap((value as Map).cast<String, dynamic>())),
      properties: map['properties'] == null
          ? null
          : (map['properties'] as Map).cast<String, String>(),
    );
  }
}
