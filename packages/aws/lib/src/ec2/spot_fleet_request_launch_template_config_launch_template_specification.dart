// ignore_for_file: unused_element, unnecessary_cast

class SpotFleetRequestLaunchTemplateConfigLaunchTemplateSpecification {
  /// The ID of the launch template. Conflicts with `name`.
  final String? id;

  /// The name of the launch template. Conflicts with `id`.
  final String? name;

  /// Template version. Unlike the autoscaling equivalent, does not support `$Latest` or `$Default`, so use the launch_template resource's attribute, e.g., `"${aws_launch_template.foo.latest_version}"`. It will use the default version if omitted.
  ///
  /// **Note:** The specified launch template can specify only a subset of the
  /// inputs of `aws.ec2.LaunchTemplate`.  There are limitations on
  /// what you can specify as spot fleet does not support all the attributes that are supported by autoscaling groups. [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html#launch-templates-spot-fleet) is currently sparse, but at least `instance_initiated_shutdown_behavior` is confirmed unsupported.
  final String? version;

  /// Creates a new [SpotFleetRequestLaunchTemplateConfigLaunchTemplateSpecification].
  /// [id] The ID of the launch template. Conflicts with `name`.
  /// [name] The name of the launch template. Conflicts with `id`.
  /// [version] Template version. Unlike the autoscaling equivalent, does not support `$Latest` or `$Default`, so use the launch_template resource's attribute, e.g., `"${aws_launch_template.foo.latest_version}"`. It will use the default version if omitted.
  SpotFleetRequestLaunchTemplateConfigLaunchTemplateSpecification({
    this.id,
    this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id, 'name': ?name, 'version': ?version};
  }

  factory SpotFleetRequestLaunchTemplateConfigLaunchTemplateSpecification.fromMap(
    Map<String, dynamic> map,
  ) {
    return SpotFleetRequestLaunchTemplateConfigLaunchTemplateSpecification(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
