// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines reference to a public IP.
class PublicIpReference {
  /// Gets the ARM resource ID of the tracked resource being referenced.
  final pulumi.Input<String> sourceArmResourceId;

  /// Creates a new [PublicIpReference].
  /// [sourceArmResourceId] Gets the ARM resource ID of the tracked resource being referenced.
  PublicIpReference({
    required this.sourceArmResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceArmResourceId': sourceArmResourceId,
    };
  }

  factory PublicIpReference.fromMap(Map<String, dynamic> map) {
    return PublicIpReference(
      sourceArmResourceId: pulumi.Input.fromValue(map['sourceArmResourceId'] as String),
    );
  }
}

