// ignore_for_file: unused_element, unnecessary_cast

class SpotFleetRequestLaunchTemplateConfigLaunchTemplateSpecification {
  /// The ID of the launch template. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  final String? id;

  /// The name of the launch template. Conflicts with <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>.
  final String? name;

  /// Template version. Unlike the autoscaling equivalent, does not support `$Latest` or `$Default`, so use the<span pulumi-lang-nodejs=" launchTemplate " pulumi-lang-dotnet=" LaunchTemplate " pulumi-lang-go=" launchTemplate " pulumi-lang-python=" launch_template " pulumi-lang-yaml=" launchTemplate " pulumi-lang-java=" launchTemplate "> launch_template </span>resource's attribute, e.g., `"${aws_launch_template.foo.latest_version}"`. It will use the default version if omitted.
  ///
  /// **Note:** The specified launch template can specify only a subset of the
  /// inputs of <span pulumi-lang-nodejs="`aws.ec2.LaunchTemplate`" pulumi-lang-dotnet="`aws.ec2.LaunchTemplate`" pulumi-lang-go="`ec2.LaunchTemplate`" pulumi-lang-python="`ec2.LaunchTemplate`" pulumi-lang-yaml="`aws.ec2.LaunchTemplate`" pulumi-lang-java="`aws.ec2.LaunchTemplate`">`aws.ec2.LaunchTemplate`</span>.  There are limitations on
  /// what you can specify as spot fleet does not support all the attributes that are supported by autoscaling groups. [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html#launch-templates-spot-fleet) is currently sparse, but at least <span pulumi-lang-nodejs="`instanceInitiatedShutdownBehavior`" pulumi-lang-dotnet="`InstanceInitiatedShutdownBehavior`" pulumi-lang-go="`instanceInitiatedShutdownBehavior`" pulumi-lang-python="`instance_initiated_shutdown_behavior`" pulumi-lang-yaml="`instanceInitiatedShutdownBehavior`" pulumi-lang-java="`instanceInitiatedShutdownBehavior`">`instance_initiated_shutdown_behavior`</span> is confirmed unsupported.
  final String? version;

  SpotFleetRequestLaunchTemplateConfigLaunchTemplateSpecification({
    this.id,
    this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory SpotFleetRequestLaunchTemplateConfigLaunchTemplateSpecification.fromMap(
      Map<String, dynamic> map) {
    return SpotFleetRequestLaunchTemplateConfigLaunchTemplateSpecification(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
