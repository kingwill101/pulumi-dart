import 'package:pulumi/pulumi.dart';
import 'assessment_delegation_args.dart';

/// Resource for managing an AWS Audit Manager Assessment Delegation.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Audit Manager Assessment Delegation using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:auditmanager/assessmentDelegation:AssessmentDelegation example abcdef-123456,arn:aws:iam::123456789012:role/example,example
/// ```
class AssessmentDelegation extends CustomResource {
  /// Identifier for the assessment.
  late final Output<String> assessmentId;

  /// Comment describing the delegation request.
  late final Output<String?> comment;

  /// Assessment control set name. This value is the control set name used during assessment creation (not the AWS-generated ID). The `_id` suffix on this attribute has been preserved to be consistent with the underlying AWS API.
  late final Output<String> controlSetId;

  /// Unique identifier for the delegation.
  late final Output<String> delegationId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Amazon Resource Name (ARN) of the IAM role.
  late final Output<String> roleArn;

  /// Type of customer persona. For assessment delegation, type must always be `RESOURCE_OWNER`.
  ///
  /// The following arguments are optional:
  late final Output<String> roleType;

  /// Status of the delegation.
  late final Output<String> status;

  AssessmentDelegation(
    String name, {
    AssessmentDelegationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:auditmanager/assessmentDelegation:AssessmentDelegation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.assessmentId = registerOutput<String>('assessmentId');
    this.comment = registerOutput<String?>('comment');
    this.controlSetId = registerOutput<String>('controlSetId');
    this.delegationId = registerOutput<String>('delegationId');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.roleType = registerOutput<String>('roleType');
    this.status = registerOutput<String>('status');
  }
}
