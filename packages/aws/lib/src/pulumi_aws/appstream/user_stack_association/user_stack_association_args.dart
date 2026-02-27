// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for UserStackAssociation.
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

  UserStackAssociationArgs({
    required this.authenticationType,
    this.region,
    this.sendEmailNotification,
    required this.stackName,
    required this.userName,
  });

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
      authenticationType:
          pulumi.Input.asInput<String>(map['authenticationType']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      sendEmailNotification:
          pulumi.Input.asOptionalInput<bool>(map['sendEmailNotification']),
      stackName: pulumi.Input.asInput<String>(map['stackName']),
      userName: pulumi.Input.asInput<String>(map['userName']),
    );
  }
}
