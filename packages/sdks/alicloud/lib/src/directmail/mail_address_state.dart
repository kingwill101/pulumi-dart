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
  MailAddressState({
    pulumi.Output<String>? accountName,
    pulumi.Output<String>? password,
    pulumi.Output<String>? replyAddress,
    pulumi.Output<String>? sendtype,
    pulumi.Output<String>? status,
  }) :
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      password = pulumi.Input.asOptionalInput<String>(password),
      replyAddress = pulumi.Input.asOptionalInput<String>(replyAddress),
      sendtype = pulumi.Input.asOptionalInput<String>(sendtype),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      accountName: map['accountName'] == null ? null : pulumi.Output.create<String>(map['accountName'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      replyAddress: map['replyAddress'] == null ? null : pulumi.Output.create<String>(map['replyAddress'] as String),
      sendtype: map['sendtype'] == null ? null : pulumi.Output.create<String>(map['sendtype'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

