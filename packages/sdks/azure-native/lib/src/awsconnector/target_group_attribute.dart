// ignore_for_file: unused_element, unnecessary_cast


/// Definition of TargetGroupAttribute
class TargetGroupAttribute {
  /// The value of the attribute.
  final String? key;
  /// The name of the attribute.
  final String? value;

  /// Creates a new [TargetGroupAttribute].
  /// [key] The value of the attribute.
  /// [value] The name of the attribute.
  TargetGroupAttribute({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory TargetGroupAttribute.fromMap(Map<String, dynamic> map) {
    return TargetGroupAttribute(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

