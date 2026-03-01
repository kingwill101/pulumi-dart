// ignore_for_file: unused_element, unnecessary_cast

class JobQueryConnectionProperty {
  /// The key of the property to set. Currently supported connection properties:
  final String key;

  /// The value of the property to set.
  final String value;

  /// Creates a new [JobQueryConnectionProperty].
  /// [key] The key of the property to set. Currently supported connection properties:
  /// [value] The value of the property to set.
  JobQueryConnectionProperty({required this.key, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory JobQueryConnectionProperty.fromMap(Map<String, dynamic> map) {
    return JobQueryConnectionProperty(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
