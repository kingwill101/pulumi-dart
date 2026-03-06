// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupWarmPoolInstanceReusePolicy {
  /// Whether instances in the Auto Scaling group can be returned to the warm pool on scale in.
  final pulumi.Input<bool>? reuseOnScaleIn;

  /// Creates a new [GroupWarmPoolInstanceReusePolicy].
  /// [reuseOnScaleIn] Whether instances in the Auto Scaling group can be returned to the warm pool on scale in.
  const GroupWarmPoolInstanceReusePolicy({
    this.reuseOnScaleIn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reuseOnScaleIn': ?reuseOnScaleIn,
    };
  }

  factory GroupWarmPoolInstanceReusePolicy.fromMap(Map<String, dynamic> map) {
    return GroupWarmPoolInstanceReusePolicy(
      reuseOnScaleIn: (() { final guardedValue = map['reuseOnScaleIn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

