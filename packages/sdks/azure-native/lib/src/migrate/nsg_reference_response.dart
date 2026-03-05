// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines reference to NSG.
class NsgReferenceResponse {
  /// Gets the ARM resource ID of the tracked resource being referenced.
  final pulumi.Input<String> sourceArmResourceId;

  /// Creates a new [NsgReferenceResponse].
  /// [sourceArmResourceId] Gets the ARM resource ID of the tracked resource being referenced.
  NsgReferenceResponse({
    required this.sourceArmResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceArmResourceId': sourceArmResourceId,
    };
  }

  factory NsgReferenceResponse.fromMap(Map<String, dynamic> map) {
    return NsgReferenceResponse(
      sourceArmResourceId: pulumi.Input.fromValue(map['sourceArmResourceId'] as String),
    );
  }
}

