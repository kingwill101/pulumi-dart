// ignore_for_file: unused_element, unnecessary_cast

/// Defines a header message. A header can have a key and a value.
class HeaderResponseCloudtasksV2beta3 {
  /// The Key of the header.
  final String key;

  /// The Value of the header.
  final String value;

  HeaderResponseCloudtasksV2beta3({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory HeaderResponseCloudtasksV2beta3.fromMap(Map<String, dynamic> map) {
    return HeaderResponseCloudtasksV2beta3(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
