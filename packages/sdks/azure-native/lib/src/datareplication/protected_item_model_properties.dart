// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyper_vto_az_stack_hciprotected_item_model_custom_properties.dart';

/// Protected item model properties.
class ProtectedItemModelProperties {
  /// Protected item model custom properties.
  final pulumi.Input<HyperVToAzStackHCIProtectedItemModelCustomProperties>
  customProperties;

  /// Gets or sets the policy name.
  final pulumi.Input<String> policyName;

  /// Gets or sets the replication extension name.
  final pulumi.Input<String> replicationExtensionName;

  /// Creates a new [ProtectedItemModelProperties].
  /// [customProperties] Protected item model custom properties.
  /// [policyName] Gets or sets the policy name.
  /// [replicationExtensionName] Gets or sets the replication extension name.
  ProtectedItemModelProperties({
    required this.customProperties,
    required this.policyName,
    required this.replicationExtensionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customProperties':
          pulumi.Input.mapInputValue<
            HyperVToAzStackHCIProtectedItemModelCustomProperties,
            Map<String, dynamic>
          >(customProperties, (value) => value.toMap()),
      'policyName': policyName,
      'replicationExtensionName': replicationExtensionName,
    };
  }

  factory ProtectedItemModelProperties.fromMap(Map<String, dynamic> map) {
    return ProtectedItemModelProperties(
      customProperties: pulumi.Input.fromValue(
        HyperVToAzStackHCIProtectedItemModelCustomProperties.fromMap(
          (map['customProperties']! as Map).cast<String, dynamic>(),
        ),
      ),
      policyName: pulumi.Input.fromValue(map['policyName'] as String),
      replicationExtensionName: pulumi.Input.fromValue(
        map['replicationExtensionName'] as String,
      ),
    );
  }
}
