// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Auto scale properties
class AutoScaleProperties {
  final pulumi.Input<bool>? enabled;
  final pulumi.Input<int>? maxNodeCount;
  final pulumi.Input<int>? minNodeCount;

  /// Creates a new [AutoScaleProperties].
  /// [enabled] Optional.
  /// [maxNodeCount] Optional.
  /// [minNodeCount] Optional.
  AutoScaleProperties({this.enabled, this.maxNodeCount, this.minNodeCount});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'maxNodeCount': ?maxNodeCount,
      'minNodeCount': ?minNodeCount,
    };
  }

  factory AutoScaleProperties.fromMap(Map<String, dynamic> map) {
    return AutoScaleProperties(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      maxNodeCount: (() {
        final guardedValue = map['maxNodeCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minNodeCount: (() {
        final guardedValue = map['minNodeCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
