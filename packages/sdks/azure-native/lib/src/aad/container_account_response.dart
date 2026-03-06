// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Container Account Description
class ContainerAccountResponse {
  /// The account name
  final pulumi.Input<String>? accountName;
  /// The account password
  final pulumi.Input<String>? password;
  /// The account spn
  final pulumi.Input<String>? spn;

  /// Creates a new [ContainerAccountResponse].
  /// [accountName] The account name
  /// [password] The account password
  /// [spn] The account spn
  const ContainerAccountResponse({
    this.accountName,
    this.password,
    this.spn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'password': ?password,
      'spn': ?spn,
    };
  }

  factory ContainerAccountResponse.fromMap(Map<String, dynamic> map) {
    return ContainerAccountResponse(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spn: (() { final guardedValue = map['spn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

