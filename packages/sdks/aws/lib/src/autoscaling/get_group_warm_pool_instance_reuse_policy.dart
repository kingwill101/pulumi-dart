// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGroupWarmPoolInstanceReusePolicy {
  /// Whether instances in the Auto Scaling group can be returned to the warm pool on scale in.
  final pulumi.Input<bool> reuseOnScaleIn;

  /// Creates a new [GetGroupWarmPoolInstanceReusePolicy].
  /// [reuseOnScaleIn] Whether instances in the Auto Scaling group can be returned to the warm pool on scale in.
  const GetGroupWarmPoolInstanceReusePolicy({
    required this.reuseOnScaleIn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reuseOnScaleIn': reuseOnScaleIn,
    };
  }

  factory GetGroupWarmPoolInstanceReusePolicy.fromMap(Map<String, dynamic> map) {
    return GetGroupWarmPoolInstanceReusePolicy(
      reuseOnScaleIn: pulumi.Input.fromValue(map['reuseOnScaleIn'] as bool),
    );
  }
}
