// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The load-based autoscale request parameters
class AutoscaleCapacity {
  /// The maximum instance count of the cluster
  final pulumi.Input<int>? maxInstanceCount;

  /// The minimum instance count of the cluster
  final pulumi.Input<int>? minInstanceCount;

  /// Creates a new [AutoscaleCapacity].
  /// [maxInstanceCount] The maximum instance count of the cluster
  /// [minInstanceCount] The minimum instance count of the cluster
  AutoscaleCapacity({this.maxInstanceCount, this.minInstanceCount});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxInstanceCount': ?maxInstanceCount,
      'minInstanceCount': ?minInstanceCount,
    };
  }

  factory AutoscaleCapacity.fromMap(Map<String, dynamic> map) {
    return AutoscaleCapacity(
      maxInstanceCount: (() {
        final guardedValue = map['maxInstanceCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minInstanceCount: (() {
        final guardedValue = map['minInstanceCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
