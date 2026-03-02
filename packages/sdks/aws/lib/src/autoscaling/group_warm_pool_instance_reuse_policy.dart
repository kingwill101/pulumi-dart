// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupWarmPoolInstanceReusePolicy {
  /// Whether instances in the Auto Scaling group can be returned to the warm pool on scale in.
  final pulumi.Input<bool>? reuseOnScaleIn;

  /// Creates a new [GroupWarmPoolInstanceReusePolicy].
  /// [reuseOnScaleIn] Whether instances in the Auto Scaling group can be returned to the warm pool on scale in.
  GroupWarmPoolInstanceReusePolicy({
    this.reuseOnScaleIn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reuseOnScaleIn': ?reuseOnScaleIn,
    };
  }

  factory GroupWarmPoolInstanceReusePolicy.fromMap(Map<String, dynamic> map) {
    return GroupWarmPoolInstanceReusePolicy(
      reuseOnScaleIn: map['reuseOnScaleIn'] == null ? null : ((map['reuseOnScaleIn'] as bool).input()).input(),
    );
  }
}

