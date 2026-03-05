// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DefaultAutoScalingConfigurationVersion resources.
class DefaultAutoScalingConfigurationVersionState {
  /// The ARN of the App Runner auto scaling configuration that you want to set as the default.
  final pulumi.Input<String>? autoScalingConfigurationArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DefaultAutoScalingConfigurationVersionState].
  /// [autoScalingConfigurationArn] The ARN of the App Runner auto scaling configuration that you want to set as the default.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  DefaultAutoScalingConfigurationVersionState({
    this.autoScalingConfigurationArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoScalingConfigurationArn': ?autoScalingConfigurationArn,
      'region': ?region,
    };
  }

  factory DefaultAutoScalingConfigurationVersionState.fromMap(Map<String, dynamic> map) {
    return DefaultAutoScalingConfigurationVersionState(
      autoScalingConfigurationArn: (() { final guardedValue = map['autoScalingConfigurationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

