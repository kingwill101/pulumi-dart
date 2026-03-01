// ignore_for_file: unused_element, unnecessary_cast


/// Definition of OpenSearchPartitionInstanceTypeEnumValue
class OpenSearchPartitionInstanceTypeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [OpenSearchPartitionInstanceTypeEnumValueResponse].
  /// [value] Property value
  OpenSearchPartitionInstanceTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory OpenSearchPartitionInstanceTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return OpenSearchPartitionInstanceTypeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

