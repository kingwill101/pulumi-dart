// ignore_for_file: unused_element, unnecessary_cast

class GroupWarmPoolInstanceReusePolicy {
  /// Whether instances in the Auto Scaling group can be returned to the warm pool on scale in.
  final bool? reuseOnScaleIn;

  /// Creates a new [GroupWarmPoolInstanceReusePolicy].
  /// [reuseOnScaleIn] Whether instances in the Auto Scaling group can be returned to the warm pool on scale in.
  GroupWarmPoolInstanceReusePolicy({
    this.reuseOnScaleIn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final reuseOnScaleInValue = reuseOnScaleIn;
    if (reuseOnScaleInValue != null) {
      map['reuseOnScaleIn'] = reuseOnScaleInValue;
    }
    return map;
  }

  factory GroupWarmPoolInstanceReusePolicy.fromMap(Map<String, dynamic> map) {
    return GroupWarmPoolInstanceReusePolicy(
      reuseOnScaleIn:
          map['reuseOnScaleIn'] == null ? null : map['reuseOnScaleIn'] as bool,
    );
  }
}
