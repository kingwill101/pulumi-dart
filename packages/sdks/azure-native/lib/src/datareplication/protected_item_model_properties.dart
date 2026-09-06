// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Protected item model properties.
class ProtectedItemModelProperties {
  /// Protected item model custom properties.
  final pulumi.Input<dynamic> customProperties;
  /// Gets or sets the policy name.
  final pulumi.Input<String> policyName;
  /// Gets or sets the replication extension name.
  final pulumi.Input<String> replicationExtensionName;

  /// Creates a new [ProtectedItemModelProperties].
  /// [customProperties] Protected item model custom properties.
  /// [policyName] Gets or sets the policy name.
  /// [replicationExtensionName] Gets or sets the replication extension name.
  const ProtectedItemModelProperties({
    required this.customProperties,
    required this.policyName,
    required this.replicationExtensionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customProperties': customProperties,
      'policyName': policyName,
      'replicationExtensionName': replicationExtensionName,
    };
  }

  factory ProtectedItemModelProperties.fromMap(Map<String, dynamic> map) {
    return ProtectedItemModelProperties(
      customProperties: pulumi.Input.fromValue(map['customProperties']),
      policyName: pulumi.Input.fromValue(map['policyName'] as String),
      replicationExtensionName: pulumi.Input.fromValue(map['replicationExtensionName'] as String),
    );
  }
}
