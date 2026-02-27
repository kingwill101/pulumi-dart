import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_quicksight_args.dart';

/// Resource for managing QuickSight User
///
/// ## Example Usage
///
/// ### Create User With IAM Identity Type Using an IAM Role
///
///
///
/// ### Create User With IAM Identity Type Using an IAM User
///
///
///
/// ### Create User With QuickSight Identity Type in Non-Default Namespace
///
///
///
/// ## Import
///
/// You cannot import this resource.
class UserQuicksight extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) for the user.
  late final pulumi.Output<String> arn;

  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> awsAccountId;

  /// Email address of the user that you want to register.
  late final pulumi.Output<String> email;

  /// ARN of the IAM user or role that you are registering with Amazon QuickSight. Required only for users with an identity type of `IAM`.
  late final pulumi.Output<String?> iamArn;

  /// Identity type that your Amazon QuickSight account uses to manage the identity of users. Valid values: `IAM`, `QUICKSIGHT`, `IAM_IDENTITY_CENTER`.
  late final pulumi.Output<String> identityType;

  /// The Amazon Quicksight namespace to create the user in. Defaults to `default`.
  late final pulumi.Output<String?> namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Name of the IAM session to use when assuming roles that can embed QuickSight dashboards. Only valid for registering users using an assumed IAM role. Additionally, if registering multiple users using the same IAM role, each user needs to have a unique session name.
  late final pulumi.Output<String?> sessionName;

  /// URL the user visits to complete registration and provide a password. Returned only for users with an identity type of `QUICKSIGHT`.
  late final pulumi.Output<String> userInvitationUrl;

  /// Amazon QuickSight user name that you want to create for the user you are registering. Required only for users with an identity type of `QUICKSIGHT`.
  late final pulumi.Output<String> userName;

  /// Amazon QuickSight role for the user. Valid values: `READER`, `AUTHOR`, `ADMIN`, `READER_PRO`, `AUTHOR_PRO`, `ADMIN_PRO`, `RESTRICTED_AUTHOR`, `RESTRICTED_READER`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> userRole;

  UserQuicksight(
    String name, {
    UserQuicksightArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/user:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.email = registerOutput<String>('email');
    this.iamArn = registerOutput<String?>('iamArn');
    this.identityType = registerOutput<String>('identityType');
    this.namespace = registerOutput<String?>('namespace');
    this.region = registerOutput<String>('region');
    this.sessionName = registerOutput<String?>('sessionName');
    this.userInvitationUrl = registerOutput<String>('userInvitationUrl');
    this.userName = registerOutput<String>('userName');
    this.userRole = registerOutput<String>('userRole');
  }
}
