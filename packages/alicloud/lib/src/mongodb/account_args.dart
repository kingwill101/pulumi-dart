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
    String? accountDescription,
    required String accountName,
    required String accountPassword,
    String? characterType,
    required String instanceId,
  }) :
      accountDescription = pulumi.Input.asOptionalInput<String>(accountDescription),
      accountName = pulumi.Input.asInput<String>(accountName),
      accountPassword = pulumi.Input.asInput<String>(accountPassword),
      characterType = pulumi.Input.asOptionalInput<String>(characterType),
      instanceId = pulumi.Input.asInput<String>(instanceId);

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
      accountDescription: map['accountDescription'] == null ? null : map['accountDescription'] as String,
      accountName: map['accountName'] as String,
      accountPassword: map['accountPassword'] as String,
      characterType: map['characterType'] == null ? null : map['characterType'] as String,
      instanceId: map['instanceId'] as String,
    );
  }
}

