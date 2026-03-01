// ignore_for_file: unused_element, unnecessary_cast


class InstanceRefreshDesiredConfigurationLaunchTemplateOverride {
  /// The specified instance type, which overwrites the instance type in the launch template.
  final String? instanceType;

  /// Creates a new [InstanceRefreshDesiredConfigurationLaunchTemplateOverride].
  /// [instanceType] The specified instance type, which overwrites the instance type in the launch template.
  InstanceRefreshDesiredConfigurationLaunchTemplateOverride({
    this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': ?instanceType,
    };
  }

  factory InstanceRefreshDesiredConfigurationLaunchTemplateOverride.fromMap(Map<String, dynamic> map) {
    return InstanceRefreshDesiredConfigurationLaunchTemplateOverride(
      instanceType: map['instanceType'] == null ? null : map['instanceType'] as String,
    );
  }
}

