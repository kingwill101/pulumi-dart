// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AssessmentDelegation resources.
class AssessmentDelegationState {
  /// Identifier for the assessment.
  final pulumi.Input<String>? assessmentId;
  /// Comment describing the delegation request.
  final pulumi.Input<String>? comment;
  /// Assessment control set name. This value is the control set name used during assessment creation (not the AWS-generated ID). The `_id` suffix on this attribute has been preserved to be consistent with the underlying AWS API.
  final pulumi.Input<String>? controlSetId;
  /// Unique identifier for the delegation.
  final pulumi.Input<String>? delegationId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Amazon Resource Name (ARN) of the IAM role.
  final pulumi.Input<String>? roleArn;
  /// Type of customer persona. For assessment delegation, type must always be `RESOURCE_OWNER`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? roleType;
  /// Status of the delegation.
  final pulumi.Input<String>? status;

  /// Creates a new [AssessmentDelegationState].
  /// [assessmentId] Identifier for the assessment.
  /// [comment] Comment describing the delegation request.
  /// [controlSetId] Assessment control set name. This value is the control set name used during assessment creation (not the AWS-generated ID). The `_id` suffix on this attribute has been preserved to be consistent with the underlying AWS API.
  /// [delegationId] Unique identifier for the delegation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] Amazon Resource Name (ARN) of the IAM role.
  /// [roleType] Type of customer persona. For assessment delegation, type must always be `RESOURCE_OWNER`.
  /// [status] Status of the delegation.
  AssessmentDelegationState({
    this.assessmentId,
    this.comment,
    this.controlSetId,
    this.delegationId,
    this.region,
    this.roleArn,
    this.roleType,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentId': ?assessmentId,
      'comment': ?comment,
      'controlSetId': ?controlSetId,
      'delegationId': ?delegationId,
      'region': ?region,
      'roleArn': ?roleArn,
      'roleType': ?roleType,
      'status': ?status,
    };
  }

  factory AssessmentDelegationState.fromMap(Map<String, dynamic> map) {
    return AssessmentDelegationState(
      assessmentId: map['assessmentId'] == null ? null : ((map['assessmentId'] as String).input()).input(),
      comment: map['comment'] == null ? null : ((map['comment'] as String).input()).input(),
      controlSetId: map['controlSetId'] == null ? null : ((map['controlSetId'] as String).input()).input(),
      delegationId: map['delegationId'] == null ? null : ((map['delegationId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      roleArn: map['roleArn'] == null ? null : ((map['roleArn'] as String).input()).input(),
      roleType: map['roleType'] == null ? null : ((map['roleType'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
    );
  }
}

