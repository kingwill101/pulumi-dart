// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of OpenSearchPartitionInstanceTypeEnumValue
class OpenSearchPartitionInstanceTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [OpenSearchPartitionInstanceTypeEnumValue].
  /// [value] Property value
  OpenSearchPartitionInstanceTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory OpenSearchPartitionInstanceTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return OpenSearchPartitionInstanceTypeEnumValue(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

