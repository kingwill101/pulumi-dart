// ignore_for_file: unused_element, unnecessary_cast

/// An item of the class.
class ClassItemResponse {
  /// The class item's value.
  final String value;

  /// Creates a new [ClassItemResponse].
  /// [value] The class item's value.
  ClassItemResponse({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory ClassItemResponse.fromMap(Map<String, dynamic> map) {
    return ClassItemResponse(
      value: map['value'] as String,
    );
  }
}
