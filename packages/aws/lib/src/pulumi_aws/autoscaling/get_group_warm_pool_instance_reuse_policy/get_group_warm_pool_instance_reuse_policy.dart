// ignore_for_file: unused_element, unnecessary_cast

class GetGroupWarmPoolInstanceReusePolicy {
  /// Indicates whether instances in the Auto Scaling group can be returned to the warm pool on scale in.
  final bool reuseOnScaleIn;

  GetGroupWarmPoolInstanceReusePolicy({
    required this.reuseOnScaleIn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['reuseOnScaleIn'] = reuseOnScaleIn;
    return map;
  }

  factory GetGroupWarmPoolInstanceReusePolicy.fromMap(
      Map<String, dynamic> map) {
    return GetGroupWarmPoolInstanceReusePolicy(
      reuseOnScaleIn: map['reuseOnScaleIn'] as bool,
    );
  }
}
