// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Replication extension model properties.
class ReplicationExtensionModelProperties {
  /// Replication extension model custom properties.
  final pulumi.Input<dynamic> customProperties;

  /// Creates a new [ReplicationExtensionModelProperties].
  /// [customProperties] Replication extension model custom properties.
  const ReplicationExtensionModelProperties({
    required this.customProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customProperties': customProperties,
    };
  }

  factory ReplicationExtensionModelProperties.fromMap(Map<String, dynamic> map) {
    return ReplicationExtensionModelProperties(
      customProperties: pulumi.Input.fromValue(map['customProperties']),
    );
  }
}
