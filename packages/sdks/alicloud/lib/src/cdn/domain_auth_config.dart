// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainAuthConfig {
  final pulumi.Input<String>? authType;
  final pulumi.Input<String>? masterKey;
  final pulumi.Input<String>? slaveKey;
  final pulumi.Input<int>? timeout;

  /// Creates a new [DomainAuthConfig].
  /// [authType] Optional.
  /// [masterKey] Optional.
  /// [slaveKey] Optional.
  /// [timeout] Optional.
  DomainAuthConfig({
    this.authType,
    this.masterKey,
    this.slaveKey,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authType': ?authType,
      'masterKey': ?masterKey,
      'slaveKey': ?slaveKey,
      'timeout': ?timeout,
    };
  }

  factory DomainAuthConfig.fromMap(Map<String, dynamic> map) {
    return DomainAuthConfig(
      authType: map['authType'] == null ? null : (map['authType'] as String).input(),
      masterKey: map['masterKey'] == null ? null : (map['masterKey'] as String).input(),
      slaveKey: map['slaveKey'] == null ? null : (map['slaveKey'] as String).input(),
      timeout: map['timeout'] == null ? null : (map['timeout'] as int).input(),
    );
  }
}

