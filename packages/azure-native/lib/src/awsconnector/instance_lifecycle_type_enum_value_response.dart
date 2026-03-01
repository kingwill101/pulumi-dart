// ignore_for_file: unused_element, unnecessary_cast


/// Definition of InstanceLifecycleTypeEnumValue
class InstanceLifecycleTypeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [InstanceLifecycleTypeEnumValueResponse].
  /// [value] Property value
  InstanceLifecycleTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory InstanceLifecycleTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return InstanceLifecycleTypeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

