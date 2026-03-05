// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityhub_standards_control_standards_control_args_doc}
/// The set of arguments for StandardsControl.
/// {@endtemplate}
/// {@macro pulumi_securityhub_standards_control_standards_control_args_doc}
class StandardsControlArgs {
  /// The control status could be `ENABLED` or `DISABLED`. You have to specify `disabled_reason` argument for `DISABLED` control status.
  final pulumi.Input<String> controlStatus;
  /// A description of the reason why you are disabling a security standard control. If you specify this attribute, `control_status` will be set to `DISABLED` automatically.
  final pulumi.Input<String>? disabledReason;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The standards control ARN. See the AWS documentation for how to list existing controls using [`get-enabled-standards`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/securityhub/get-enabled-standards.html) and [`describe-standards-controls`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/securityhub/describe-standards-controls.html).
  final pulumi.Input<String> standardsControlArn;

  /// Creates a new [StandardsControlArgs].
  /// [controlStatus] The control status could be `ENABLED` or `DISABLED`. You have to specify `disabled_reason` argument for `DISABLED` control status.
  /// [disabledReason] A description of the reason why you are disabling a security standard control. If you specify this attribute, `control_status` will be set to `DISABLED` automatically.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [standardsControlArn] The standards control ARN. See the AWS documentation for how to list existing controls using [`get-enabled-standards`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/securityhub/get-enabled-standards.html) and [`describe-standards-controls`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/securityhub/describe-standards-controls.html).
  StandardsControlArgs({
    required this.controlStatus,
    this.disabledReason,
    this.region,
    required this.standardsControlArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlStatus': controlStatus,
      'disabledReason': ?disabledReason,
      'region': ?region,
      'standardsControlArn': standardsControlArn,
    };
  }

  factory StandardsControlArgs.fromMap(Map<String, dynamic> map) {
    return StandardsControlArgs(
      controlStatus: pulumi.Input.fromValue(map['controlStatus'] as String),
      disabledReason: (() { final guardedValue = map['disabledReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      standardsControlArn: pulumi.Input.fromValue(map['standardsControlArn'] as String),
    );
  }
}

