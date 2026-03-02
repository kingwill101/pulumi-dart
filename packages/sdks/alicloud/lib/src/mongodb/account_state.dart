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
      accountDescription: map['accountDescription'] == null ? null : (map['accountDescription']! as String).input(),
      accountName: map['accountName'] == null ? null : (map['accountName']! as String).input(),
      accountPassword: map['accountPassword'] == null ? null : (map['accountPassword']! as String).input(),
      characterType: map['characterType'] == null ? null : (map['characterType']! as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

