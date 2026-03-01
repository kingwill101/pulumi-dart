// ignore_for_file: unused_element, unnecessary_cast


class GetGroupWarmPoolInstanceReusePolicy {
  /// Indicates whether instances in the Auto Scaling group can be returned to the warm pool on scale in.
  final bool reuseOnScaleIn;

  /// Creates a new [GetGroupWarmPoolInstanceReusePolicy].
  /// [reuseOnScaleIn] Indicates whether instances in the Auto Scaling group can be returned to the warm pool on scale in.
  GetGroupWarmPoolInstanceReusePolicy({
    required this.reuseOnScaleIn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reuseOnScaleIn': reuseOnScaleIn,
    };
  }

  factory GetGroupWarmPoolInstanceReusePolicy.fromMap(Map<String, dynamic> map) {
    return GetGroupWarmPoolInstanceReusePolicy(
      reuseOnScaleIn: map['reuseOnScaleIn'] as bool,
    );
  }
}

