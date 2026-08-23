// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines reference to a public IP.
class PublicIpReferenceResponse {
  /// Gets the ARM resource ID of the tracked resource being referenced.
  final pulumi.Input<String> sourceArmResourceId;

  /// Creates a new [PublicIpReferenceResponse].
  /// [sourceArmResourceId] Gets the ARM resource ID of the tracked resource being referenced.
  const PublicIpReferenceResponse({
    required this.sourceArmResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceArmResourceId': sourceArmResourceId,
    };
  }

  factory PublicIpReferenceResponse.fromMap(Map<String, dynamic> map) {
    return PublicIpReferenceResponse(
      sourceArmResourceId: pulumi.Input.fromValue(map['sourceArmResourceId'] as String),
    );
  }
}
