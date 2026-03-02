// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Environment variables of Spring Cloud Gateway
class GatewayPropertiesResponseEnvironmentVariables {
  /// Non-sensitive properties
  final pulumi.Input<Map<String, String>>? properties;
  /// Sensitive properties
  final pulumi.Input<Map<String, String>>? secrets;

  /// Creates a new [GatewayPropertiesResponseEnvironmentVariables].
  /// [properties] Non-sensitive properties
  /// [secrets] Sensitive properties
  GatewayPropertiesResponseEnvironmentVariables({
    this.properties,
    this.secrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?properties,
      'secrets': ?secrets,
    };
  }

  factory GatewayPropertiesResponseEnvironmentVariables.fromMap(Map<String, dynamic> map) {
    return GatewayPropertiesResponseEnvironmentVariables(
      properties: map['properties'] == null ? null : ((map['properties']! as Map).cast<String, String>()).input(),
      secrets: map['secrets'] == null ? null : ((map['secrets']! as Map).cast<String, String>()).input(),
    );
  }
}

