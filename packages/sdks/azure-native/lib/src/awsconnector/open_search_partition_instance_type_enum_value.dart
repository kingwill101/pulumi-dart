// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of OpenSearchPartitionInstanceTypeEnumValue
class OpenSearchPartitionInstanceTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [OpenSearchPartitionInstanceTypeEnumValue].
  /// [value] Property value
  const OpenSearchPartitionInstanceTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory OpenSearchPartitionInstanceTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return OpenSearchPartitionInstanceTypeEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
