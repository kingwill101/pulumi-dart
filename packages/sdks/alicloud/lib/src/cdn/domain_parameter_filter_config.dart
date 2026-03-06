// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainParameterFilterConfig {
  final pulumi.Input<String>? enable;
  final pulumi.Input<List<String>>? hashKeyArgs;

  /// Creates a new [DomainParameterFilterConfig].
  /// [enable] Optional.
  /// [hashKeyArgs] Optional.
  const DomainParameterFilterConfig({
    this.enable,
    this.hashKeyArgs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'hashKeyArgs': ?hashKeyArgs,
    };
  }

  factory DomainParameterFilterConfig.fromMap(Map<String, dynamic> map) {
    return DomainParameterFilterConfig(
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hashKeyArgs: (() { final guardedValue = map['hashKeyArgs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

