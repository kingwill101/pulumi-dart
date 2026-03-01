// ignore_for_file: unused_element, unnecessary_cast

/// Defines a header message. A header can have a key and a value.
class HeaderCloudtasksV2beta3 {
  /// The Key of the header.
  final String? key;

  /// The Value of the header.
  final String? value;

  /// Creates a new [HeaderCloudtasksV2beta3].
  /// [key] The Key of the header.
  /// [value] The Value of the header.
  HeaderCloudtasksV2beta3({this.key, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': ?key, 'value': ?value};
  }

  factory HeaderCloudtasksV2beta3.fromMap(Map<String, dynamic> map) {
    return HeaderCloudtasksV2beta3(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
