// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_get_launch_configuration_get_launch_configuration_args_doc}
/// Arguments for getLaunchConfiguration.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_launch_configuration_get_launch_configuration_args_doc}
class GetLaunchConfigurationArgs {
  /// Name of the launch configuration.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetLaunchConfigurationArgs].
  /// [name] Name of the launch configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetLaunchConfigurationArgs({
    required String name,
    String? region,
  }) :
      name = pulumi.Input.asInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
    };
  }

  factory GetLaunchConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetLaunchConfigurationArgs(
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

