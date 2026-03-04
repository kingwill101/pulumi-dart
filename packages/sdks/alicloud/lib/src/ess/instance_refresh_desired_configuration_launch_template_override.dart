// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceRefreshDesiredConfigurationLaunchTemplateOverride {
  /// The specified instance type, which overwrites the instance type in the launch template.
  final pulumi.Input<String>? instanceType;

  /// Creates a new [InstanceRefreshDesiredConfigurationLaunchTemplateOverride].
  /// [instanceType] The specified instance type, which overwrites the instance type in the launch template.
  InstanceRefreshDesiredConfigurationLaunchTemplateOverride({
    this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'instanceType': ?instanceType};
  }

  factory InstanceRefreshDesiredConfigurationLaunchTemplateOverride.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceRefreshDesiredConfigurationLaunchTemplateOverride(
      instanceType: (() {
        final guardedValue = map['instanceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
