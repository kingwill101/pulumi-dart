// ignore_for_file: unused_element, unnecessary_cast


/// Definition of OpenSearchWarmPartitionInstanceTypeEnumValue
class OpenSearchWarmPartitionInstanceTypeEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [OpenSearchWarmPartitionInstanceTypeEnumValue].
  /// [value] Property value
  OpenSearchWarmPartitionInstanceTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory OpenSearchWarmPartitionInstanceTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return OpenSearchWarmPartitionInstanceTypeEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

