// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerRandomSteering {
  /// The default round-robin weight, used for all pools that do not have individually specified weights. The value range is 0-100.
  final pulumi.Input<int>? defaultWeight;

  /// Weight configuration for each backend server pool, where the key is the pool ID and the value is the weight coefficient. The weight coefficient represents the proportion of relative traffic distribution.
  final pulumi.Input<Map<String, String>>? poolWeights;

  /// Creates a new [LoadBalancerRandomSteering].
  /// [defaultWeight] The default round-robin weight, used for all pools that do not have individually specified weights. The value range is 0-100.
  /// [poolWeights] Weight configuration for each backend server pool, where the key is the pool ID and the value is the weight coefficient. The weight coefficient represents the proportion of relative traffic distribution.
  LoadBalancerRandomSteering({this.defaultWeight, this.poolWeights});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultWeight': ?defaultWeight,
      'poolWeights': ?poolWeights,
    };
  }

  factory LoadBalancerRandomSteering.fromMap(Map<String, dynamic> map) {
    return LoadBalancerRandomSteering(
      defaultWeight: (() {
        final guardedValue = map['defaultWeight'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      poolWeights: (() {
        final guardedValue = map['poolWeights'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
