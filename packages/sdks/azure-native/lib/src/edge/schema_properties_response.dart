// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Schema Properties
class SchemaPropertiesResponse {
  /// Current Version of schema
  final pulumi.Input<String> currentVersion;

  /// Provisioning state of resource
  final pulumi.Input<String> provisioningState;

  /// Creates a new [SchemaPropertiesResponse].
  /// [currentVersion] Current Version of schema
  /// [provisioningState] Provisioning state of resource
  SchemaPropertiesResponse({
    required this.currentVersion,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentVersion': currentVersion,
      'provisioningState': provisioningState,
    };
  }

  factory SchemaPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SchemaPropertiesResponse(
      currentVersion: pulumi.Input.fromValue(map['currentVersion'] as String),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
    );
  }
}
