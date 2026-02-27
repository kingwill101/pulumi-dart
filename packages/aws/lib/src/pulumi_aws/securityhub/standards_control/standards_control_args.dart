// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for StandardsControl.
class StandardsControlArgs {
  /// The control status could be `ENABLED` or `DISABLED`. You have to specify `disabled_reason` argument for `DISABLED` control status.
  final Input<String> controlStatus;

  /// A description of the reason why you are disabling a security standard control. If you specify this attribute, `control_status` will be set to `DISABLED` automatically.
  final Input<String>? disabledReason;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The standards control ARN. See the AWS documentation for how to list existing controls using [`get-enabled-standards`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/securityhub/get-enabled-standards.html) and [`describe-standards-controls`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/securityhub/describe-standards-controls.html).
  final Input<String> standardsControlArn;

  StandardsControlArgs({
    required this.controlStatus,
    this.disabledReason,
    this.region,
    required this.standardsControlArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['controlStatus'] = controlStatus;
    final disabledReasonValue = disabledReason;
    if (disabledReasonValue != null) {
      map['disabledReason'] = disabledReasonValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['standardsControlArn'] = standardsControlArn;
    return map;
  }

  factory StandardsControlArgs.fromMap(Map<String, dynamic> map) {
    return StandardsControlArgs(
      controlStatus: Input.asInput<String>(map['controlStatus']),
      disabledReason: Input.asOptionalInput<String>(map['disabledReason']),
      region: Input.asOptionalInput<String>(map['region']),
      standardsControlArn: Input.asInput<String>(map['standardsControlArn']),
    );
  }
}
