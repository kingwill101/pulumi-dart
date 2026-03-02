// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserStackAssociation resources.
class UserStackAssociationState {
  /// Authentication type for the user.
  final pulumi.Input<String>? authenticationType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Whether a welcome email is sent to a user after the user is created in the user pool.
  final pulumi.Input<bool>? sendEmailNotification;
  /// Name of the stack that is associated with the user.
  final pulumi.Input<String>? stackName;
  /// Email address of the user who is associated with the stack.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? userName;

  /// Creates a new [UserStackAssociationState].
  /// [authenticationType] Authentication type for the user.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sendEmailNotification] Whether a welcome email is sent to a user after the user is created in the user pool.
  /// [stackName] Name of the stack that is associated with the user.
  /// [userName] Email address of the user who is associated with the stack.
  UserStackAssociationState({
    this.authenticationType,
    this.region,
    this.sendEmailNotification,
    this.stackName,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': ?authenticationType,
      'region': ?region,
      'sendEmailNotification': ?sendEmailNotification,
      'stackName': ?stackName,
      'userName': ?userName,
    };
  }

  factory UserStackAssociationState.fromMap(Map<String, dynamic> map) {
    return UserStackAssociationState(
      authenticationType: map['authenticationType'] == null ? null : (map['authenticationType'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      sendEmailNotification: map['sendEmailNotification'] == null ? null : (map['sendEmailNotification'] as bool).input(),
      stackName: map['stackName'] == null ? null : (map['stackName'] as String).input(),
      userName: map['userName'] == null ? null : (map['userName'] as String).input(),
    );
  }
}

