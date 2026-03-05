// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mongodb_account_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_mongodb_account_account_args_doc}
class AccountArgs {
  /// Set the comment information of the account.
  /// - Cannot start with http:// or https.
  /// - Start with Chinese and English letters.
  /// - Can contain Chinese characters, English characters, underscores (_), dashes (-), and numbers, and can be 2 to 256 characters in length.
  final pulumi.Input<String>? accountDescription;
  /// Account Name
  final pulumi.Input<String> accountName;
  /// Account Password
  final pulumi.Input<String> accountPassword;
  /// The account Comment Information type. Value:
  final pulumi.Input<String>? characterType;
  /// Instance Id
  final pulumi.Input<String> instanceId;

  /// Creates a new [AccountArgs].
  /// [accountDescription] Set the comment information of the account.
  /// [accountName] Account Name
  /// [accountPassword] Account Password
  /// [characterType] The account Comment Information type. Value:
  /// [instanceId] Instance Id
  AccountArgs({
    this.accountDescription,
    required this.accountName,
    required this.accountPassword,
    this.characterType,
    required this.instanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountDescription': ?accountDescription,
      'accountName': accountName,
      'accountPassword': accountPassword,
      'characterType': ?characterType,
      'instanceId': instanceId,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      accountDescription: (() { final guardedValue = map['accountDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      accountPassword: pulumi.Input.fromValue(map['accountPassword'] as String),
      characterType: (() { final guardedValue = map['characterType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
    );
  }
}

