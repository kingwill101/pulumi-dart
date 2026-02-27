// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Account.
class AccountArgs {
  /// ARN of an IAM role for CloudWatch (to allow logging & monitoring). See more [in AWS Docs](https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-stage-settings.html#how-to-stage-settings-console). Logging & monitoring can be enabled/disabled and otherwise tuned on the API Gateway Stage level.
  final pulumi.Input<String>? cloudwatchRoleArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  AccountArgs({
    this.cloudwatchRoleArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudwatchRoleArnValue = cloudwatchRoleArn;
    if (cloudwatchRoleArnValue != null) {
      map['cloudwatchRoleArn'] = cloudwatchRoleArnValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      cloudwatchRoleArn:
          pulumi.Input.asOptionalInput<String>(map['cloudwatchRoleArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
