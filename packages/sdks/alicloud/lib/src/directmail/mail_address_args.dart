// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directmail_mail_address_mail_address_args_doc}
/// The set of arguments for MailAddress.
/// {@endtemplate}
/// {@macro pulumi_directmail_mail_address_mail_address_args_doc}
class MailAddressArgs {
  /// The sender address. The email address must be filled in the format of account@domain, and only lowercase letters or numbers can be used.
  final pulumi.Input<String> accountName;
  /// Account password. The password must be length 10-20 string, contains numbers, uppercase letters, lowercase letters at the same time.
  final pulumi.Input<String>? password;
  /// Return address.
  final pulumi.Input<String>? replyAddress;
  /// Account type. Valid values: `batch`, `trigger`.
  final pulumi.Input<String> sendtype;

  /// Creates a new [MailAddressArgs].
  /// [accountName] The sender address. The email address must be filled in the format of account@domain, and only lowercase letters or numbers can be used.
  /// [password] Account password. The password must be length 10-20 string, contains numbers, uppercase letters, lowercase letters at the same time.
  /// [replyAddress] Return address.
  /// [sendtype] Account type. Valid values: `batch`, `trigger`.
  const MailAddressArgs({
    required this.accountName,
    this.password,
    this.replyAddress,
    required this.sendtype,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'password': ?password,
      'replyAddress': ?replyAddress,
      'sendtype': sendtype,
    };
  }

  factory MailAddressArgs.fromMap(Map<String, dynamic> map) {
    return MailAddressArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replyAddress: (() { final guardedValue = map['replyAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sendtype: pulumi.Input.fromValue(map['sendtype'] as String),
    );
  }
}

