// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerGroupUchConfig {
  /// The parameter type. Only QueryString can be filled.
  final pulumi.Input<String>? type;
  /// Consistency hash parameter value
  final pulumi.Input<String>? value;

  /// Creates a new [ServerGroupUchConfig].
  /// [type] The parameter type. Only QueryString can be filled.
  /// [value] Consistency hash parameter value
  const ServerGroupUchConfig({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': ?value,
    };
  }

  factory ServerGroupUchConfig.fromMap(Map<String, dynamic> map) {
    return ServerGroupUchConfig(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

