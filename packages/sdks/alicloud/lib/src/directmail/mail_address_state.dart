// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MailAddress resources.
class MailAddressState {
  /// The sender address. The email address must be filled in the format of account@domain, and only lowercase letters or numbers can be used.
  final pulumi.Input<String>? accountName;
  /// Account password. The password must be length 10-20 string, contains numbers, uppercase letters, lowercase letters at the same time.
  final pulumi.Input<String>? password;
  /// Return address.
  final pulumi.Input<String>? replyAddress;
  /// Account type. Valid values: `batch`, `trigger`.
  final pulumi.Input<String>? sendtype;
  /// Account Status freeze: 1, normal: 0.
  final pulumi.Input<String>? status;

  /// Creates a new [MailAddressState].
  /// [accountName] The sender address. The email address must be filled in the format of account@domain, and only lowercase letters or numbers can be used.
  /// [password] Account password. The password must be length 10-20 string, contains numbers, uppercase letters, lowercase letters at the same time.
  /// [replyAddress] Return address.
  /// [sendtype] Account type. Valid values: `batch`, `trigger`.
  /// [status] Account Status freeze: 1, normal: 0.
  const MailAddressState({
    this.accountName,
    this.password,
    this.replyAddress,
    this.sendtype,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'password': ?password,
      'replyAddress': ?replyAddress,
      'sendtype': ?sendtype,
      'status': ?status,
    };
  }

  factory MailAddressState.fromMap(Map<String, dynamic> map) {
    return MailAddressState(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replyAddress: (() { final guardedValue = map['replyAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sendtype: (() { final guardedValue = map['sendtype']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

