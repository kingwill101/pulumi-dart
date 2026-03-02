// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_auditmanager_assessment_delegation_assessment_delegation_args_doc}
/// The set of arguments for AssessmentDelegation.
/// {@endtemplate}
/// {@macro pulumi_auditmanager_assessment_delegation_assessment_delegation_args_doc}
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

  /// Creates a new [AssessmentDelegationArgs].
  /// [assessmentId] Identifier for the assessment.
  /// [comment] Comment describing the delegation request.
  /// [controlSetId] Assessment control set name. This value is the control set name used during assessment creation (not the AWS-generated ID). The `_id` suffix on this attribute has been preserved to be consistent with the underlying AWS API.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] Amazon Resource Name (ARN) of the IAM role.
  /// [roleType] Type of customer persona. For assessment delegation, type must always be `RESOURCE_OWNER`.
  AssessmentDelegationArgs({
    required this.assessmentId,
    this.comment,
    required this.controlSetId,
    this.region,
    required this.roleArn,
    required this.roleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentId': assessmentId,
      'comment': ?comment,
      'controlSetId': controlSetId,
      'region': ?region,
      'roleArn': roleArn,
      'roleType': roleType,
    };
  }

  factory AssessmentDelegationArgs.fromMap(Map<String, dynamic> map) {
    return AssessmentDelegationArgs(
      assessmentId: (map['assessmentId'] as String).input(),
      comment: map['comment'] == null ? null : ((map['comment'] as String).input()).input(),
      controlSetId: (map['controlSetId'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      roleArn: (map['roleArn'] as String).input(),
      roleType: (map['roleType'] as String).input(),
    );
  }
}

