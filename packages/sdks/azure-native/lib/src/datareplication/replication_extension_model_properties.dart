// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyper_vto_az_stack_hcireplication_extension_model_custom_properties.dart';

/// Replication extension model properties.
class ReplicationExtensionModelProperties {
  /// Replication extension model custom properties.
  final pulumi.Input<
    HyperVToAzStackHCIReplicationExtensionModelCustomProperties
  >
  customProperties;

  /// Creates a new [ReplicationExtensionModelProperties].
  /// [customProperties] Replication extension model custom properties.
  ReplicationExtensionModelProperties({required this.customProperties});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customProperties':
          pulumi.Input.mapInputValue<
            HyperVToAzStackHCIReplicationExtensionModelCustomProperties,
            Map<String, dynamic>
          >(customProperties, (value) => value.toMap()),
    };
  }

  factory ReplicationExtensionModelProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return ReplicationExtensionModelProperties(
      customProperties: pulumi.Input.fromValue(
        HyperVToAzStackHCIReplicationExtensionModelCustomProperties.fromMap(
          (map['customProperties']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
