// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessConnectorPropertiesResponse {
  /// Provisioning status of the Access Connector.
  final pulumi.Input<String> provisioningState;
  /// List of workspaces referring this Access Connector.
  final pulumi.Input<List<String>> referedBy;

  /// Creates a new [AccessConnectorPropertiesResponse].
  /// [provisioningState] Provisioning status of the Access Connector.
  /// [referedBy] List of workspaces referring this Access Connector.
  const AccessConnectorPropertiesResponse({
    required this.provisioningState,
    required this.referedBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'referedBy': referedBy,
    };
  }

  factory AccessConnectorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AccessConnectorPropertiesResponse(
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      referedBy: pulumi.Input.fromValue((map['referedBy'] as List).cast<String>()),
    );
  }
}

