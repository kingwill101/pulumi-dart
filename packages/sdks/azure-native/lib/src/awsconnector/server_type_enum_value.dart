// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ServerTypeEnumValue
class ServerTypeEnumValue {
  /// Property value
  final pulumi.Input<dynamic>? value;

  /// Creates a new [ServerTypeEnumValue].
  /// [value] Property value
  const ServerTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ServerTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return ServerTypeEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
