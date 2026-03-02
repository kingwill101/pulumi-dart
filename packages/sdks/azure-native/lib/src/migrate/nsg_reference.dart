// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines reference to NSG.
class NsgReference {
  /// Gets the ARM resource ID of the tracked resource being referenced.
  final pulumi.Input<String> sourceArmResourceId;

  /// Creates a new [NsgReference].
  /// [sourceArmResourceId] Gets the ARM resource ID of the tracked resource being referenced.
  NsgReference({
    required this.sourceArmResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceArmResourceId': sourceArmResourceId,
    };
  }

  factory NsgReference.fromMap(Map<String, dynamic> map) {
    return NsgReference(
      sourceArmResourceId: (map['sourceArmResourceId'] as String).input(),
    );
  }
}

