// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines reference to subnet.
class SubnetReferenceResponse {
  /// Gets the name of the proxy resource on the target side.
  final pulumi.Input<String?>? name;
  /// Gets the ARM resource ID of the tracked resource being referenced.
  final pulumi.Input<String> sourceArmResourceId;

  /// Creates a new [SubnetReferenceResponse].
  /// [name] Gets the name of the proxy resource on the target side.
  /// [sourceArmResourceId] Gets the ARM resource ID of the tracked resource being referenced.
  const SubnetReferenceResponse({
    this.name,
    required this.sourceArmResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'sourceArmResourceId': sourceArmResourceId,
    };
  }

  factory SubnetReferenceResponse.fromMap(Map<String, dynamic> map) {
    return SubnetReferenceResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceArmResourceId: pulumi.Input.fromValue(map['sourceArmResourceId'] as String),
    );
  }
}
