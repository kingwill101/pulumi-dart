// ignore_for_file: unused_element, unnecessary_cast


/// Scaling plan reference to hostpool.
class ScalingHostPoolReferenceResponse {
  /// Arm path of referenced hostpool.
  final String? hostPoolArmPath;
  /// Is the scaling plan enabled for this hostpool.
  final bool? scalingPlanEnabled;

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
      hostPoolArmPath: map['hostPoolArmPath'] == null ? null : map['hostPoolArmPath'] as String,
      scalingPlanEnabled: map['scalingPlanEnabled'] == null ? null : map['scalingPlanEnabled'] as bool,
    );
  }
}

