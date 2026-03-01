// ignore_for_file: unused_element, unnecessary_cast


/// Definition of TargetGroupAttribute
class TargetGroupAttributeResponse {
  /// The value of the attribute.
  final String? key;
  /// The name of the attribute.
  final String? value;

  /// Creates a new [TargetGroupAttributeResponse].
  /// [key] The value of the attribute.
  /// [value] The name of the attribute.
  TargetGroupAttributeResponse({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory TargetGroupAttributeResponse.fromMap(Map<String, dynamic> map) {
    return TargetGroupAttributeResponse(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

