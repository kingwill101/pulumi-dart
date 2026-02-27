import 'package:pulumi/pulumi.dart';
import '../iam_policy_assignment_identities/iam_policy_assignment_identities.dart';
import 'iam_policy_assignment_args.dart';

/// Resource for managing an AWS QuickSight IAM Policy Assignment.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import QuickSight IAM Policy Assignment using the AWS account ID, namespace, and assignment name separated by commas (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/iamPolicyAssignment:IamPolicyAssignment example 123456789012,default,example
/// ```
class IamPolicyAssignment extends CustomResource {
  /// Assignment ID.
  late final Output<String> assignmentId;

  /// Name of the assignment.
  late final Output<String> assignmentName;

  /// Status of the assignment. Valid values are `ENABLED`, `DISABLED`, and `DRAFT`.
  ///
  /// The following arguments are optional:
  late final Output<String> assignmentStatus;

  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final Output<String> awsAccountId;

  /// Amazon QuickSight users, groups, or both to assign the policy to. See `identities` block.
  late final Output<IamPolicyAssignmentIdentities?> identities;

  /// Namespace that contains the assignment. Defaults to `default`.
  late final Output<String> namespace;

  /// ARN of the IAM policy to apply to the Amazon QuickSight users and groups specified in this assignment.
  late final Output<String?> policyArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  IamPolicyAssignment(
    String name, {
    IamPolicyAssignmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/iamPolicyAssignment:IamPolicyAssignment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.assignmentId = registerOutput<String>('assignmentId');
    this.assignmentName = registerOutput<String>('assignmentName');
    this.assignmentStatus = registerOutput<String>('assignmentStatus');
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.identities =
        registerOutput<IamPolicyAssignmentIdentities?>('identities');
    this.namespace = registerOutput<String>('namespace');
    this.policyArn = registerOutput<String?>('policyArn');
    this.region = registerOutput<String>('region');
  }
}
