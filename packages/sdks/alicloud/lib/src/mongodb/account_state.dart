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
    this.accountDescription,
    this.accountName,
    this.accountPassword,
    this.characterType,
    this.instanceId,
    this.status,
  });

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
      accountDescription: (() {
        final guardedValue = map['accountDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      accountName: (() {
        final guardedValue = map['accountName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      accountPassword: (() {
        final guardedValue = map['accountPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      characterType: (() {
        final guardedValue = map['characterType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
