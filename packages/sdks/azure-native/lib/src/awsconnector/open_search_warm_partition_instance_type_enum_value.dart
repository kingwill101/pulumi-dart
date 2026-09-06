// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of OpenSearchWarmPartitionInstanceTypeEnumValue
class OpenSearchWarmPartitionInstanceTypeEnumValue {
  /// Property value
  final pulumi.Input<dynamic>? value;

  /// Creates a new [OpenSearchWarmPartitionInstanceTypeEnumValue].
  /// [value] Property value
  const OpenSearchWarmPartitionInstanceTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory OpenSearchWarmPartitionInstanceTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return OpenSearchWarmPartitionInstanceTypeEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
