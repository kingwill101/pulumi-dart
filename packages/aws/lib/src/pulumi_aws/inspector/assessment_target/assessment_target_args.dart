// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AssessmentTarget.
class AssessmentTargetArgs {
  /// The name of the assessment target.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Inspector Resource Group Amazon Resource Name (ARN) stating tags for instance matching. If not specified, all EC2 instances in the current AWS account and region are included in the assessment target.
  final Input<String>? resourceGroupArn;

  AssessmentTargetArgs({
    this.name,
    this.region,
    this.resourceGroupArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resourceGroupArnValue = resourceGroupArn;
    if (resourceGroupArnValue != null) {
      map['resourceGroupArn'] = resourceGroupArnValue;
    }
    return map;
  }

  factory AssessmentTargetArgs.fromMap(Map<String, dynamic> map) {
    return AssessmentTargetArgs(
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceGroupArn: Input.asOptionalInput<String>(map['resourceGroupArn']),
    );
  }
}
