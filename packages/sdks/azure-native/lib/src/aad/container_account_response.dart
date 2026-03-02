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
  ContainerAccountResponse({
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
      accountName: map['accountName'] == null ? null : (map['accountName']! as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      spn: map['spn'] == null ? null : (map['spn']! as String).input(),
    );
  }
}

