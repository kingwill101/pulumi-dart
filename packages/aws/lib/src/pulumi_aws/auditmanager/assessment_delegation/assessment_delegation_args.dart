// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AssessmentDelegation.
class AssessmentDelegationArgs {
  /// Identifier for the assessment.
  final pulumi.Input<String> assessmentId;

  /// Comment describing the delegation request.
  final pulumi.Input<String>? comment;

  /// Assessment control set name. This value is the control set name used during assessment creation (not the AWS-generated ID). The `_id` suffix on this attribute has been preserved to be consistent with the underlying AWS API.
  final pulumi.Input<String> controlSetId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Amazon Resource Name (ARN) of the IAM role.
  final pulumi.Input<String> roleArn;

  /// Type of customer persona. For assessment delegation, type must always be `RESOURCE_OWNER`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> roleType;

  AssessmentDelegationArgs({
    required this.assessmentId,
    this.comment,
    required this.controlSetId,
    this.region,
    required this.roleArn,
    required this.roleType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['assessmentId'] = assessmentId;
    final commentValue = comment;
    if (commentValue != null) {
      map['comment'] = commentValue;
    }
    map['controlSetId'] = controlSetId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    map['roleType'] = roleType;
    return map;
  }

  factory AssessmentDelegationArgs.fromMap(Map<String, dynamic> map) {
    return AssessmentDelegationArgs(
      assessmentId: pulumi.Input.asInput<String>(map['assessmentId']),
      comment: pulumi.Input.asOptionalInput<String>(map['comment']),
      controlSetId: pulumi.Input.asInput<String>(map['controlSetId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      roleArn: pulumi.Input.asInput<String>(map['roleArn']),
      roleType: pulumi.Input.asInput<String>(map['roleType']),
    );
  }
}
