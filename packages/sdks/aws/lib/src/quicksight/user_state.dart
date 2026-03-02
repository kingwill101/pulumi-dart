// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering User resources.
class UserState {
  /// Amazon Resource Name (ARN) for the user.
  final pulumi.Input<String>? arn;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// Email address of the user that you want to register.
  final pulumi.Input<String>? email;
  /// ARN of the IAM user or role that you are registering with Amazon QuickSight. Required only for users with an identity type of `IAM`.
  final pulumi.Input<String>? iamArn;
  /// Identity type that your Amazon QuickSight account uses to manage the identity of users. Valid values: `IAM`, `QUICKSIGHT`, `IAM_IDENTITY_CENTER`.
  final pulumi.Input<String>? identityType;
  /// The Amazon Quicksight namespace to create the user in. Defaults to `default`.
  final pulumi.Input<String>? namespace;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name of the IAM session to use when assuming roles that can embed QuickSight dashboards. Only valid for registering users using an assumed IAM role. Additionally, if registering multiple users using the same IAM role, each user needs to have a unique session name.
  final pulumi.Input<String>? sessionName;
  /// URL the user visits to complete registration and provide a password. Returned only for users with an identity type of `QUICKSIGHT`.
  final pulumi.Input<String>? userInvitationUrl;
  /// Amazon QuickSight user name that you want to create for the user you are registering. Required only for users with an identity type of `QUICKSIGHT`.
  final pulumi.Input<String>? userName;
  /// Amazon QuickSight role for the user. Valid values: `READER`, `AUTHOR`, `ADMIN`, `READER_PRO`, `AUTHOR_PRO`, `ADMIN_PRO`, `RESTRICTED_AUTHOR`, `RESTRICTED_READER`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? userRole;

  /// Creates a new [UserState].
  /// [arn] Amazon Resource Name (ARN) for the user.
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [email] Email address of the user that you want to register.
  /// [iamArn] ARN of the IAM user or role that you are registering with Amazon QuickSight. Required only for users with an identity type of `IAM`.
  /// [identityType] Identity type that your Amazon QuickSight account uses to manage the identity of users. Valid values: `IAM`, `QUICKSIGHT`, `IAM_IDENTITY_CENTER`.
  /// [namespace] The Amazon Quicksight namespace to create the user in. Defaults to `default`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sessionName] Name of the IAM session to use when assuming roles that can embed QuickSight dashboards. Only valid for registering users using an assumed IAM role. Additionally, if registering multiple users using the same IAM role, each user needs to have a unique session name.
  /// [userInvitationUrl] URL the user visits to complete registration and provide a password. Returned only for users with an identity type of `QUICKSIGHT`.
  /// [userName] Amazon QuickSight user name that you want to create for the user you are registering. Required only for users with an identity type of `QUICKSIGHT`.
  /// [userRole] Amazon QuickSight role for the user. Valid values: `READER`, `AUTHOR`, `ADMIN`, `READER_PRO`, `AUTHOR_PRO`, `ADMIN_PRO`, `RESTRICTED_AUTHOR`, `RESTRICTED_READER`.
  UserState({
    this.arn,
    this.awsAccountId,
    this.email,
    this.iamArn,
    this.identityType,
    this.namespace,
    this.region,
    this.sessionName,
    this.userInvitationUrl,
    this.userName,
    this.userRole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'awsAccountId': ?awsAccountId,
      'email': ?email,
      'iamArn': ?iamArn,
      'identityType': ?identityType,
      'namespace': ?namespace,
      'region': ?region,
      'sessionName': ?sessionName,
      'userInvitationUrl': ?userInvitationUrl,
      'userName': ?userName,
      'userRole': ?userRole,
    };
  }

  factory UserState.fromMap(Map<String, dynamic> map) {
    return UserState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      awsAccountId: map['awsAccountId'] == null ? null : (map['awsAccountId'] as String).input(),
      email: map['email'] == null ? null : (map['email'] as String).input(),
      iamArn: map['iamArn'] == null ? null : (map['iamArn'] as String).input(),
      identityType: map['identityType'] == null ? null : (map['identityType'] as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      sessionName: map['sessionName'] == null ? null : (map['sessionName'] as String).input(),
      userInvitationUrl: map['userInvitationUrl'] == null ? null : (map['userInvitationUrl'] as String).input(),
      userName: map['userName'] == null ? null : (map['userName'] as String).input(),
      userRole: map['userRole'] == null ? null : (map['userRole'] as String).input(),
    );
  }
}

