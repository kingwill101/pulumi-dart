// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the user intent of the proximity placement group.
class ProximityPlacementGroupPropertiesIntent {
  /// Specifies possible sizes of virtual machines that can be created in the proximity placement group.
  final pulumi.Input<List<String>>? vmSizes;

  /// Creates a new [ProximityPlacementGroupPropertiesIntent].
  /// [vmSizes] Specifies possible sizes of virtual machines that can be created in the proximity placement group.
  ProximityPlacementGroupPropertiesIntent({
    this.vmSizes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vmSizes': ?vmSizes,
    };
  }

  factory ProximityPlacementGroupPropertiesIntent.fromMap(Map<String, dynamic> map) {
    return ProximityPlacementGroupPropertiesIntent(
      vmSizes: map['vmSizes'] == null ? null : ((map['vmSizes'] as List).cast<String>()).input(),
    );
  }
}

