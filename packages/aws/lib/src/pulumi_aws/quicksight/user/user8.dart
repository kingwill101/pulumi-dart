import 'package:pulumi/pulumi.dart';
import 'user_args8.dart';

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
class User8 extends CustomResource {
  /// Amazon Resource Name (ARN) for the user.
  late final Output<String> arn;

  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final Output<String> awsAccountId;

  /// Email address of the user that you want to register.
  late final Output<String> email;

  /// ARN of the IAM user or role that you are registering with Amazon QuickSight. Required only for users with an identity type of `IAM`.
  late final Output<String?> iamArn;

  /// Identity type that your Amazon QuickSight account uses to manage the identity of users. Valid values: `IAM`, `QUICKSIGHT`, `IAM_IDENTITY_CENTER`.
  late final Output<String> identityType;

  /// The Amazon Quicksight namespace to create the user in. Defaults to `default`.
  late final Output<String?> namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Name of the IAM session to use when assuming roles that can embed QuickSight dashboards. Only valid for registering users using an assumed IAM role. Additionally, if registering multiple users using the same IAM role, each user needs to have a unique session name.
  late final Output<String?> sessionName;

  /// URL the user visits to complete registration and provide a password. Returned only for users with an identity type of `QUICKSIGHT`.
  late final Output<String> userInvitationUrl;

  /// Amazon QuickSight user name that you want to create for the user you are registering. Required only for users with an identity type of `QUICKSIGHT`.
  late final Output<String> userName;

  /// Amazon QuickSight role for the user. Valid values: `READER`, `AUTHOR`, `ADMIN`, `READER_PRO`, `AUTHOR_PRO`, `ADMIN_PRO`, `RESTRICTED_AUTHOR`, `RESTRICTED_READER`.
  ///
  /// The following arguments are optional:
  late final Output<String> userRole;

  User8(
    String name, {
    UserArgs8? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/user:User',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
