// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of NetworkInterfaceStatusEnumValue
class NetworkInterfaceStatusEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [NetworkInterfaceStatusEnumValue].
  /// [value] Property value
  const NetworkInterfaceStatusEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory NetworkInterfaceStatusEnumValue.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceStatusEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

