// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for User.
class UserArgs8 {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final Input<String>? awsAccountId;

  /// Email address of the user that you want to register.
  final Input<String> email;

  /// ARN of the IAM user or role that you are registering with Amazon QuickSight. Required only for users with an identity type of `IAM`.
  final Input<String>? iamArn;

  /// Identity type that your Amazon QuickSight account uses to manage the identity of users. Valid values: `IAM`, `QUICKSIGHT`, `IAM_IDENTITY_CENTER`.
  final Input<String> identityType;

  /// The Amazon Quicksight namespace to create the user in. Defaults to <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>.
  final Input<String>? namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Name of the IAM session to use when assuming roles that can embed QuickSight dashboards. Only valid for registering users using an assumed IAM role. Additionally, if registering multiple users using the same IAM role, each user needs to have a unique session name.
  final Input<String>? sessionName;

  /// Amazon QuickSight user name that you want to create for the user you are registering. Required only for users with an identity type of `QUICKSIGHT`.
  final Input<String>? userName;

  /// Amazon QuickSight role for the user. Valid values: `READER`, `AUTHOR`, `ADMIN`, `READER_PRO`, `AUTHOR_PRO`, `ADMIN_PRO`, `RESTRICTED_AUTHOR`, `RESTRICTED_READER`.
  ///
  /// The following arguments are optional:
  final Input<String> userRole;

  UserArgs8({
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

  factory UserArgs8.fromMap(Map<String, dynamic> map) {
    return UserArgs8(
      awsAccountId: Input.asOptionalInput<String>(map['awsAccountId']),
      email: Input.asInput<String>(map['email']),
      iamArn: Input.asOptionalInput<String>(map['iamArn']),
      identityType: Input.asInput<String>(map['identityType']),
      namespace: Input.asOptionalInput<String>(map['namespace']),
      region: Input.asOptionalInput<String>(map['region']),
      sessionName: Input.asOptionalInput<String>(map['sessionName']),
      userName: Input.asOptionalInput<String>(map['userName']),
      userRole: Input.asInput<String>(map['userRole']),
    );
  }
}
