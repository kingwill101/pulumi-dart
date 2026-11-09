// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectOverrideConfigurationImageSensitiveDataConfigurationPiiEntitiesConfiguration {
  /// Set of PII entity types to detect, such as `ALL`, `NAME`, `EMAIL` or `US_SOCIAL_SECURITY_NUMBER`. See the [API reference](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_data-automation_PIIEntitiesConfiguration.html) for all valid values.
  final pulumi.Input<List<String>?>? piiEntityTypes;
  /// How to mask redacted data. Valid values: `PII`, `ENTITY_TYPE`.
  final pulumi.Input<String?>? redactionMaskMode;

  /// Creates a new [ProjectOverrideConfigurationImageSensitiveDataConfigurationPiiEntitiesConfiguration].
  /// [piiEntityTypes] Set of PII entity types to detect, such as `ALL`, `NAME`, `EMAIL` or `US_SOCIAL_SECURITY_NUMBER`. See the [API reference](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_data-automation_PIIEntitiesConfiguration.html) for all valid values.
  /// [redactionMaskMode] How to mask redacted data. Valid values: `PII`, `ENTITY_TYPE`.
  const ProjectOverrideConfigurationImageSensitiveDataConfigurationPiiEntitiesConfiguration({
    this.piiEntityTypes,
    this.redactionMaskMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'piiEntityTypes': ?piiEntityTypes,
      'redactionMaskMode': ?redactionMaskMode,
    };
  }

  factory ProjectOverrideConfigurationImageSensitiveDataConfigurationPiiEntitiesConfiguration.fromMap(Map<String, dynamic> map) {
    return ProjectOverrideConfigurationImageSensitiveDataConfigurationPiiEntitiesConfiguration(
      piiEntityTypes: (() { final guardedValue = map['piiEntityTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      redactionMaskMode: (() { final guardedValue = map['redactionMaskMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
