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
  ServerGroupUchConfig({
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
      type: map['type'] == null ? null : (map['type']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

