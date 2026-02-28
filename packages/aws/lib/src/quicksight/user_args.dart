// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_quicksight_user_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_quicksight_user_user_args_doc}
class UserArgs {
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

  /// Creates a new [UserArgs].
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [email] Email address of the user that you want to register.
  /// [iamArn] ARN of the IAM user or role that you are registering with Amazon QuickSight. Required only for users with an identity type of `IAM`.
  /// [identityType] Identity type that your Amazon QuickSight account uses to manage the identity of users. Valid values: `IAM`, `QUICKSIGHT`, `IAM_IDENTITY_CENTER`.
  /// [namespace] The Amazon Quicksight namespace to create the user in. Defaults to `default`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sessionName] Name of the IAM session to use when assuming roles that can embed QuickSight dashboards. Only valid for registering users using an assumed IAM role. Additionally, if registering multiple users using the same IAM role, each user needs to have a unique session name.
  /// [userName] Amazon QuickSight user name that you want to create for the user you are registering. Required only for users with an identity type of `QUICKSIGHT`.
  /// [userRole] Amazon QuickSight role for the user. Valid values: `READER`, `AUTHOR`, `ADMIN`, `READER_PRO`, `AUTHOR_PRO`, `ADMIN_PRO`, `RESTRICTED_AUTHOR`, `RESTRICTED_READER`.
  UserArgs({
    String? awsAccountId,
    required String email,
    String? iamArn,
    required String identityType,
    String? namespace,
    String? region,
    String? sessionName,
    String? userName,
    required String userRole,
  })  : awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
        email = pulumi.Input.asInput<String>(email),
        iamArn = pulumi.Input.asOptionalInput<String>(iamArn),
        identityType = pulumi.Input.asInput<String>(identityType),
        namespace = pulumi.Input.asOptionalInput<String>(namespace),
        region = pulumi.Input.asOptionalInput<String>(region),
        sessionName = pulumi.Input.asOptionalInput<String>(sessionName),
        userName = pulumi.Input.asOptionalInput<String>(userName),
        userRole = pulumi.Input.asInput<String>(userRole);

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

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      awsAccountId:
          map['awsAccountId'] == null ? null : map['awsAccountId'] as String,
      email: map['email'] as String,
      iamArn: map['iamArn'] == null ? null : map['iamArn'] as String,
      identityType: map['identityType'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      sessionName:
          map['sessionName'] == null ? null : map['sessionName'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
      userRole: map['userRole'] as String,
    );
  }
}
