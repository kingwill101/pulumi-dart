// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Scaling plan reference to hostpool.
class ScalingHostPoolReference {
  /// Arm path of referenced hostpool.
  final pulumi.Input<String>? hostPoolArmPath;
  /// Is the scaling plan enabled for this hostpool.
  final pulumi.Input<bool>? scalingPlanEnabled;

  /// Creates a new [ScalingHostPoolReference].
  /// [hostPoolArmPath] Arm path of referenced hostpool.
  /// [scalingPlanEnabled] Is the scaling plan enabled for this hostpool.
  ScalingHostPoolReference({
    this.hostPoolArmPath,
    this.scalingPlanEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostPoolArmPath': ?hostPoolArmPath,
      'scalingPlanEnabled': ?scalingPlanEnabled,
    };
  }

  factory ScalingHostPoolReference.fromMap(Map<String, dynamic> map) {
    return ScalingHostPoolReference(
      hostPoolArmPath: map['hostPoolArmPath'] == null ? null : (map['hostPoolArmPath'] as String).input(),
      scalingPlanEnabled: map['scalingPlanEnabled'] == null ? null : (map['scalingPlanEnabled'] as bool).input(),
    );
  }
}

