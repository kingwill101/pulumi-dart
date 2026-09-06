// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Replication extension model properties.
class ReplicationExtensionModelPropertiesResponse {
  /// Replication extension model custom properties.
  final pulumi.Input<dynamic> customProperties;
  /// Gets or sets the provisioning state of the replication extension.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [ReplicationExtensionModelPropertiesResponse].
  /// [customProperties] Replication extension model custom properties.
  /// [provisioningState] Gets or sets the provisioning state of the replication extension.
  const ReplicationExtensionModelPropertiesResponse({
    required this.customProperties,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customProperties': customProperties,
      'provisioningState': provisioningState,
    };
  }

  factory ReplicationExtensionModelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ReplicationExtensionModelPropertiesResponse(
      customProperties: pulumi.Input.fromValue(map['customProperties']),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
