// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appstream_user_stack_association_user_stack_association_args_doc}
/// The set of arguments for UserStackAssociation.
/// {@endtemplate}
/// {@macro pulumi_appstream_user_stack_association_user_stack_association_args_doc}
class UserStackAssociationArgs {
  /// Authentication type for the user.
  final pulumi.Input<String> authenticationType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Whether a welcome email is sent to a user after the user is created in the user pool.
  final pulumi.Input<bool>? sendEmailNotification;

  /// Name of the stack that is associated with the user.
  final pulumi.Input<String> stackName;

  /// Email address of the user who is associated with the stack.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> userName;

  /// Creates a new [UserStackAssociationArgs].
  /// [authenticationType] Authentication type for the user.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sendEmailNotification] Whether a welcome email is sent to a user after the user is created in the user pool.
  /// [stackName] Name of the stack that is associated with the user.
  /// [userName] Email address of the user who is associated with the stack.
  UserStackAssociationArgs({
    required String authenticationType,
    String? region,
    bool? sendEmailNotification,
    required String stackName,
    required String userName,
  })  : authenticationType = pulumi.Input.asInput<String>(authenticationType),
        region = pulumi.Input.asOptionalInput<String>(region),
        sendEmailNotification =
            pulumi.Input.asOptionalInput<bool>(sendEmailNotification),
        stackName = pulumi.Input.asInput<String>(stackName),
        userName = pulumi.Input.asInput<String>(userName);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authenticationType'] = authenticationType;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sendEmailNotificationValue = sendEmailNotification;
    if (sendEmailNotificationValue != null) {
      map['sendEmailNotification'] = sendEmailNotificationValue;
    }
    map['stackName'] = stackName;
    map['userName'] = userName;
    return map;
  }

  factory UserStackAssociationArgs.fromMap(Map<String, dynamic> map) {
    return UserStackAssociationArgs(
      authenticationType: map['authenticationType'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      sendEmailNotification: map['sendEmailNotification'] == null
          ? null
          : map['sendEmailNotification'] as bool,
      stackName: map['stackName'] as String,
      userName: map['userName'] as String,
    );
  }
}
