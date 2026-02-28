// ignore_for_file: unused_element, unnecessary_cast


/// Defines a header message. A header can have a key and a value.
class HeaderCloudtasksV2beta2 {
  /// The key of the header.
  final String? key;
  /// The value of the header.
  final String? value;

  /// Creates a new [HeaderCloudtasksV2beta2].
  /// [key] The key of the header.
  /// [value] The value of the header.
  HeaderCloudtasksV2beta2({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory HeaderCloudtasksV2beta2.fromMap(Map<String, dynamic> map) {
    return HeaderCloudtasksV2beta2(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

