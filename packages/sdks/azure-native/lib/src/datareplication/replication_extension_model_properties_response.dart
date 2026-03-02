// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyper_vto_az_stack_hcireplication_extension_model_custom_properties_response.dart';

/// Replication extension model properties.
class ReplicationExtensionModelPropertiesResponse {
  /// Replication extension model custom properties.
  final pulumi.Input<HyperVToAzStackHCIReplicationExtensionModelCustomPropertiesResponse> customProperties;
  /// Gets or sets the provisioning state of the replication extension.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [ReplicationExtensionModelPropertiesResponse].
  /// [customProperties] Replication extension model custom properties.
  /// [provisioningState] Gets or sets the provisioning state of the replication extension.
  ReplicationExtensionModelPropertiesResponse({
    required this.customProperties,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customProperties': pulumi.Input.mapInputValue<HyperVToAzStackHCIReplicationExtensionModelCustomPropertiesResponse, Map<String, dynamic>>(customProperties, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory ReplicationExtensionModelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ReplicationExtensionModelPropertiesResponse(
      customProperties: (HyperVToAzStackHCIReplicationExtensionModelCustomPropertiesResponse.fromMap((map['customProperties'] as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

