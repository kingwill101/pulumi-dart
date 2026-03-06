// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information regarding the Configuration API of the API Management gateway. This is only applicable for API gateway with Standard SKU.
class GatewayConfigurationApiResponse {
  /// Hostname to which the agent connects to propagate configuration to the cloud.
  final pulumi.Input<String> hostname;

  /// Creates a new [GatewayConfigurationApiResponse].
  /// [hostname] Hostname to which the agent connects to propagate configuration to the cloud.
  const GatewayConfigurationApiResponse({
    required this.hostname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
    };
  }

  factory GatewayConfigurationApiResponse.fromMap(Map<String, dynamic> map) {
    return GatewayConfigurationApiResponse(
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
    );
  }
}

