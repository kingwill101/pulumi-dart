// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for DefaultAutoScalingConfigurationVersion.
class DefaultAutoScalingConfigurationVersionArgs {
  /// The ARN of the App Runner auto scaling configuration that you want to set as the default.
  final pulumi.Input<String> autoScalingConfigurationArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  DefaultAutoScalingConfigurationVersionArgs({
    required this.autoScalingConfigurationArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoScalingConfigurationArn'] = autoScalingConfigurationArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory DefaultAutoScalingConfigurationVersionArgs.fromMap(
      Map<String, dynamic> map) {
    return DefaultAutoScalingConfigurationVersionArgs(
      autoScalingConfigurationArn:
          pulumi.Input.asInput<String>(map['autoScalingConfigurationArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
