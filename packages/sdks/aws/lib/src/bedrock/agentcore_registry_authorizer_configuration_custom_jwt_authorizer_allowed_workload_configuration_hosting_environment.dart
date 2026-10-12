// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfigurationHostingEnvironment {
  /// ARN of the hosting environment.
  final pulumi.Input<String> arn;

  /// Creates a new [AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfigurationHostingEnvironment].
  /// [arn] ARN of the hosting environment.
  const AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfigurationHostingEnvironment({
    required this.arn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
    };
  }

  factory AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfigurationHostingEnvironment.fromMap(Map<String, dynamic> map) {
    return AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfigurationHostingEnvironment(
      arn: pulumi.Input.fromValue(map['arn'] as String),
    );
  }
}
