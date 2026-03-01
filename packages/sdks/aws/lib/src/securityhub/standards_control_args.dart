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
    required pulumi.Output<String> controlStatus,
    pulumi.Output<String>? disabledReason,
    pulumi.Output<String>? region,
    required pulumi.Output<String> standardsControlArn,
  }) :
      controlStatus = pulumi.Input.asInput<String>(controlStatus),
      disabledReason = pulumi.Input.asOptionalInput<String>(disabledReason),
      region = pulumi.Input.asOptionalInput<String>(region),
      standardsControlArn = pulumi.Input.asInput<String>(standardsControlArn);

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
      controlStatus: pulumi.Output.create<String>(map['controlStatus'] as String),
      disabledReason: map['disabledReason'] == null ? null : pulumi.Output.create<String>(map['disabledReason'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      standardsControlArn: pulumi.Output.create<String>(map['standardsControlArn'] as String),
    );
  }
}

