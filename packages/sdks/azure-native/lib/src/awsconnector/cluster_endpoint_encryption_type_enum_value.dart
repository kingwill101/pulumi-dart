// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ClusterEndpointEncryptionTypeEnumValue
class ClusterEndpointEncryptionTypeEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [ClusterEndpointEncryptionTypeEnumValue].
  /// [value] Property value
  ClusterEndpointEncryptionTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ClusterEndpointEncryptionTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return ClusterEndpointEncryptionTypeEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

