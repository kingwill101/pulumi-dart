// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Scaling plan reference to hostpool.
class ScalingHostPoolReferenceResponse {
  /// Arm path of referenced hostpool.
  final pulumi.Input<String>? hostPoolArmPath;
  /// Is the scaling plan enabled for this hostpool.
  final pulumi.Input<bool>? scalingPlanEnabled;

  /// Creates a new [ScalingHostPoolReferenceResponse].
  /// [hostPoolArmPath] Arm path of referenced hostpool.
  /// [scalingPlanEnabled] Is the scaling plan enabled for this hostpool.
  ScalingHostPoolReferenceResponse({
    this.hostPoolArmPath,
    this.scalingPlanEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostPoolArmPath': ?hostPoolArmPath,
      'scalingPlanEnabled': ?scalingPlanEnabled,
    };
  }

  factory ScalingHostPoolReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ScalingHostPoolReferenceResponse(
      hostPoolArmPath: map['hostPoolArmPath'] == null ? null : (map['hostPoolArmPath'] as String).input(),
      scalingPlanEnabled: map['scalingPlanEnabled'] == null ? null : (map['scalingPlanEnabled'] as bool).input(),
    );
  }
}

