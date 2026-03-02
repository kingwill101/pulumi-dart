// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ServerTypeEnumValue
class ServerTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [ServerTypeEnumValue].
  /// [value] Property value
  ServerTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ServerTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return ServerTypeEnumValue(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

