// ignore_for_file: unused_element, unnecessary_cast

/// Defines a header message. A header can have a key and a value.
class HeaderResponseCloudtasksV2beta2 {
  /// The key of the header.
  final String key;

  /// The value of the header.
  final String value;

  /// Creates a new [HeaderResponseCloudtasksV2beta2].
  /// [key] The key of the header.
  /// [value] The value of the header.
  HeaderResponseCloudtasksV2beta2({required this.key, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory HeaderResponseCloudtasksV2beta2.fromMap(Map<String, dynamic> map) {
    return HeaderResponseCloudtasksV2beta2(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
