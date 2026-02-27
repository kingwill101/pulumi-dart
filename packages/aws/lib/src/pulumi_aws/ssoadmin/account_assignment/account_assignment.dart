import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_assignment_args.dart';

/// Provides a Single Sign-On (SSO) Account Assignment resource
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### With Managed Policy Attachment
///
/// > Because destruction of a managed policy attachment resource also re-provisions the associated permission set to all accounts, explicitly indicating the dependency with the account assignment resource via the `depends_on` meta argument is necessary to ensure proper deletion order when these resources are used together.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SSO Account Assignments using the `principal_id`, `principal_type`, `target_id`, `target_type`, `permission_set_arn`, `instance_arn` separated by commas (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/accountAssignment:AccountAssignment example f81d4fae-7dec-11d0-a765-00a0c91e6bf6,GROUP,1234567890,AWS_ACCOUNT,arn:aws:sso:::permissionSet/ssoins-0123456789abcdef/ps-0123456789abcdef,arn:aws:sso:::instance/ssoins-0123456789abcdef
/// ```
class AccountAssignment extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the SSO Instance.
  late final pulumi.Output<String> instanceArn;

  /// The Amazon Resource Name (ARN) of the Permission Set that the admin wants to grant the principal access to.
  late final pulumi.Output<String> permissionSetArn;

  /// An identifier for an object in SSO, such as a user or group. PrincipalIds are GUIDs (For example, `f81d4fae-7dec-11d0-a765-00a0c91e6bf6`).
  late final pulumi.Output<String> principalId;

  /// The entity type for which the assignment will be created. Valid values: `USER`, `GROUP`.
  late final pulumi.Output<String> principalType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// An AWS account identifier, typically a 10-12 digit string.
  late final pulumi.Output<String> targetId;

  /// The entity type for which the assignment will be created. Valid values: `AWS_ACCOUNT`.
  late final pulumi.Output<String> targetType;

  AccountAssignment(
    String name, {
    AccountAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/accountAssignment:AccountAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.instanceArn = registerOutput<String>('instanceArn');
    this.permissionSetArn = registerOutput<String>('permissionSetArn');
    this.principalId = registerOutput<String>('principalId');
    this.principalType = registerOutput<String>('principalType');
    this.region = registerOutput<String>('region');
    this.targetId = registerOutput<String>('targetId');
    this.targetType = registerOutput<String>('targetType');
  }
}
