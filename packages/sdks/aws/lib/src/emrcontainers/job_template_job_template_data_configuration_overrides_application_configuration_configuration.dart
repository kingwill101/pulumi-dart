// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobTemplateJobTemplateDataConfigurationOverridesApplicationConfigurationConfiguration {
  /// The classification within a configuration.
  final pulumi.Input<String>? classification;
  /// A set of properties specified within a configuration classification.
  final pulumi.Input<Map<String, String>>? properties;

  /// Creates a new [JobTemplateJobTemplateDataConfigurationOverridesApplicationConfigurationConfiguration].
  /// [classification] The classification within a configuration.
  /// [properties] A set of properties specified within a configuration classification.
  const JobTemplateJobTemplateDataConfigurationOverridesApplicationConfigurationConfiguration({
    this.classification,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classification': ?classification,
      'properties': ?properties,
    };
  }

  factory JobTemplateJobTemplateDataConfigurationOverridesApplicationConfigurationConfiguration.fromMap(Map<String, dynamic> map) {
    return JobTemplateJobTemplateDataConfigurationOverridesApplicationConfigurationConfiguration(
      classification: (() { final guardedValue = map['classification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

