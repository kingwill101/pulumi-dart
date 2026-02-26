// ignore_for_file: unused_element, unnecessary_cast

/// A single property entry in the Properties message.
class GoogleCloudApigeeV1Property {
  /// The property key
  final String? name;

  /// The property value
  final String? value;

  GoogleCloudApigeeV1Property({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory GoogleCloudApigeeV1Property.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1Property(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
