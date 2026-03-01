// ignore_for_file: unused_element, unnecessary_cast

import 'hyper_vto_az_stack_hcireplication_extension_model_custom_properties.dart';

/// Replication extension model properties.
class ReplicationExtensionModelProperties {
  /// Replication extension model custom properties.
  final HyperVToAzStackHCIReplicationExtensionModelCustomProperties customProperties;

  /// Creates a new [ReplicationExtensionModelProperties].
  /// [customProperties] Replication extension model custom properties.
  ReplicationExtensionModelProperties({
    required this.customProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customProperties': customProperties.toMap(),
    };
  }

  factory ReplicationExtensionModelProperties.fromMap(Map<String, dynamic> map) {
    return ReplicationExtensionModelProperties(
      customProperties: HyperVToAzStackHCIReplicationExtensionModelCustomProperties.fromMap((map['customProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

