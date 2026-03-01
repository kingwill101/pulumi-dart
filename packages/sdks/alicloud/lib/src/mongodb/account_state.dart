// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Account resources.
class AccountState {
  /// Set the comment information of the account.
  /// - Cannot start with http:// or https.
  /// - Start with Chinese and English letters.
  /// - Can contain Chinese characters, English characters, underscores (_), dashes (-), and numbers, and can be 2 to 256 characters in length.
  final pulumi.Input<String>? accountDescription;
  /// Account Name
  final pulumi.Input<String>? accountName;
  /// Account Password
  final pulumi.Input<String>? accountPassword;
  /// The account Comment Information type. Value:
  final pulumi.Input<String>? characterType;
  /// Instance Id
  final pulumi.Input<String>? instanceId;
  /// Account Status
  final pulumi.Input<String>? status;

  /// Creates a new [AccountState].
  /// [accountDescription] Set the comment information of the account.
  /// [accountName] Account Name
  /// [accountPassword] Account Password
  /// [characterType] The account Comment Information type. Value:
  /// [instanceId] Instance Id
  /// [status] Account Status
  AccountState({
    pulumi.Output<String>? accountDescription,
    pulumi.Output<String>? accountName,
    pulumi.Output<String>? accountPassword,
    pulumi.Output<String>? characterType,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? status,
  }) :
      accountDescription = pulumi.Input.asOptionalInput<String>(accountDescription),
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      accountPassword = pulumi.Input.asOptionalInput<String>(accountPassword),
      characterType = pulumi.Input.asOptionalInput<String>(characterType),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountDescription': ?accountDescription,
      'accountName': ?accountName,
      'accountPassword': ?accountPassword,
      'characterType': ?characterType,
      'instanceId': ?instanceId,
      'status': ?status,
    };
  }

  factory AccountState.fromMap(Map<String, dynamic> map) {
    return AccountState(
      accountDescription: map['accountDescription'] == null ? null : pulumi.Output.create<String>(map['accountDescription'] as String),
      accountName: map['accountName'] == null ? null : pulumi.Output.create<String>(map['accountName'] as String),
      accountPassword: map['accountPassword'] == null ? null : pulumi.Output.create<String>(map['accountPassword'] as String),
      characterType: map['characterType'] == null ? null : pulumi.Output.create<String>(map['characterType'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

