// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceConfigurationResourceConfigurationDefinitionArnResource {
  /// ARN of the Resource for this configuration.
  final pulumi.Input<String> arn;

  /// Creates a new [ResourceConfigurationResourceConfigurationDefinitionArnResource].
  /// [arn] ARN of the Resource for this configuration.
  const ResourceConfigurationResourceConfigurationDefinitionArnResource({
    required this.arn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
    };
  }

  factory ResourceConfigurationResourceConfigurationDefinitionArnResource.fromMap(Map<String, dynamic> map) {
    return ResourceConfigurationResourceConfigurationDefinitionArnResource(
      arn: pulumi.Input.fromValue(map['arn'] as String),
    );
  }
}
