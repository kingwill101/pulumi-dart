// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchTemplateInstanceRequirementsNetworkInterfaceCount {
  /// Maximum.
  final pulumi.Input<int>? max;

  /// Minimum.
  final pulumi.Input<int>? min;

  /// Creates a new [LaunchTemplateInstanceRequirementsNetworkInterfaceCount].
  /// [max] Maximum.
  /// [min] Minimum.
  LaunchTemplateInstanceRequirementsNetworkInterfaceCount({this.max, this.min});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'max': ?max, 'min': ?min};
  }

  factory LaunchTemplateInstanceRequirementsNetworkInterfaceCount.fromMap(
    Map<String, dynamic> map,
  ) {
    return LaunchTemplateInstanceRequirementsNetworkInterfaceCount(
      max: (() {
        final guardedValue = map['max'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      min: (() {
        final guardedValue = map['min'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
