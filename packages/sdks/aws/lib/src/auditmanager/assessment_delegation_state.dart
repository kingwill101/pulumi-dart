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
    pulumi.Output<String>? assessmentId,
    pulumi.Output<String>? comment,
    pulumi.Output<String>? controlSetId,
    pulumi.Output<String>? delegationId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<String>? roleType,
    pulumi.Output<String>? status,
  }) :
      assessmentId = pulumi.Input.asOptionalInput<String>(assessmentId),
      comment = pulumi.Input.asOptionalInput<String>(comment),
      controlSetId = pulumi.Input.asOptionalInput<String>(controlSetId),
      delegationId = pulumi.Input.asOptionalInput<String>(delegationId),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      roleType = pulumi.Input.asOptionalInput<String>(roleType),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      assessmentId: map['assessmentId'] == null ? null : pulumi.Output.create<String>(map['assessmentId'] as String),
      comment: map['comment'] == null ? null : pulumi.Output.create<String>(map['comment'] as String),
      controlSetId: map['controlSetId'] == null ? null : pulumi.Output.create<String>(map['controlSetId'] as String),
      delegationId: map['delegationId'] == null ? null : pulumi.Output.create<String>(map['delegationId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      roleType: map['roleType'] == null ? null : pulumi.Output.create<String>(map['roleType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

