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
  const DomainAuthConfig({
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
      authType: (() { final guardedValue = map['authType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterKey: (() { final guardedValue = map['masterKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slaveKey: (() { final guardedValue = map['slaveKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

