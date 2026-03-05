// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the user intent of the proximity placement group.
class ProximityPlacementGroupPropertiesIntentResponse {
  /// Specifies possible sizes of virtual machines that can be created in the proximity placement group.
  final pulumi.Input<List<String>>? vmSizes;

  /// Creates a new [ProximityPlacementGroupPropertiesIntentResponse].
  /// [vmSizes] Specifies possible sizes of virtual machines that can be created in the proximity placement group.
  ProximityPlacementGroupPropertiesIntentResponse({
    this.vmSizes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vmSizes': ?vmSizes,
    };
  }

  factory ProximityPlacementGroupPropertiesIntentResponse.fromMap(Map<String, dynamic> map) {
    return ProximityPlacementGroupPropertiesIntentResponse(
      vmSizes: (() { final guardedValue = map['vmSizes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

