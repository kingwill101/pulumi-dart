// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for User.
class UserQuicksightArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;

  /// Email address of the user that you want to register.
  final pulumi.Input<String> email;

  /// ARN of the IAM user or role that you are registering with Amazon QuickSight. Required only for users with an identity type of `IAM`.
  final pulumi.Input<String>? iamArn;

  /// Identity type that your Amazon QuickSight account uses to manage the identity of users. Valid values: `IAM`, `QUICKSIGHT`, `IAM_IDENTITY_CENTER`.
  final pulumi.Input<String> identityType;

  /// The Amazon Quicksight namespace to create the user in. Defaults to `default`.
  final pulumi.Input<String>? namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Name of the IAM session to use when assuming roles that can embed QuickSight dashboards. Only valid for registering users using an assumed IAM role. Additionally, if registering multiple users using the same IAM role, each user needs to have a unique session name.
  final pulumi.Input<String>? sessionName;

  /// Amazon QuickSight user name that you want to create for the user you are registering. Required only for users with an identity type of `QUICKSIGHT`.
  final pulumi.Input<String>? userName;

  /// Amazon QuickSight role for the user. Valid values: `READER`, `AUTHOR`, `ADMIN`, `READER_PRO`, `AUTHOR_PRO`, `ADMIN_PRO`, `RESTRICTED_AUTHOR`, `RESTRICTED_READER`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> userRole;

  UserQuicksightArgs({
    this.awsAccountId,
    required this.email,
    this.iamArn,
    required this.identityType,
    this.namespace,
    this.region,
    this.sessionName,
    this.userName,
    required this.userRole,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsAccountIdValue = awsAccountId;
    if (awsAccountIdValue != null) {
      map['awsAccountId'] = awsAccountIdValue;
    }
    map['email'] = email;
    final iamArnValue = iamArn;
    if (iamArnValue != null) {
      map['iamArn'] = iamArnValue;
    }
    map['identityType'] = identityType;
    final namespaceValue = namespace;
    if (namespaceValue != null) {
      map['namespace'] = namespaceValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sessionNameValue = sessionName;
    if (sessionNameValue != null) {
      map['sessionName'] = sessionNameValue;
    }
    final userNameValue = userName;
    if (userNameValue != null) {
      map['userName'] = userNameValue;
    }
    map['userRole'] = userRole;
    return map;
  }

  factory UserQuicksightArgs.fromMap(Map<String, dynamic> map) {
    return UserQuicksightArgs(
      awsAccountId: pulumi.Input.asOptionalInput<String>(map['awsAccountId']),
      email: pulumi.Input.asInput<String>(map['email']),
      iamArn: pulumi.Input.asOptionalInput<String>(map['iamArn']),
      identityType: pulumi.Input.asInput<String>(map['identityType']),
      namespace: pulumi.Input.asOptionalInput<String>(map['namespace']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      sessionName: pulumi.Input.asOptionalInput<String>(map['sessionName']),
      userName: pulumi.Input.asOptionalInput<String>(map['userName']),
      userRole: pulumi.Input.asInput<String>(map['userRole']),
    );
  }
}
