// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apprunner_default_auto_scaling_configuration_version_default_auto_scaling_configuration_version_args_doc}
/// The set of arguments for DefaultAutoScalingConfigurationVersion.
/// {@endtemplate}
/// {@macro pulumi_apprunner_default_auto_scaling_configuration_version_default_auto_scaling_configuration_version_args_doc}
class DefaultAutoScalingConfigurationVersionArgs {
  /// The ARN of the App Runner auto scaling configuration that you want to set as the default.
  final pulumi.Input<String> autoScalingConfigurationArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DefaultAutoScalingConfigurationVersionArgs].
  /// [autoScalingConfigurationArn] The ARN of the App Runner auto scaling configuration that you want to set as the default.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  DefaultAutoScalingConfigurationVersionArgs({
    required this.autoScalingConfigurationArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoScalingConfigurationArn': autoScalingConfigurationArn,
      'region': ?region,
    };
  }

  factory DefaultAutoScalingConfigurationVersionArgs.fromMap(Map<String, dynamic> map) {
    return DefaultAutoScalingConfigurationVersionArgs(
      autoScalingConfigurationArn: (map['autoScalingConfigurationArn'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

