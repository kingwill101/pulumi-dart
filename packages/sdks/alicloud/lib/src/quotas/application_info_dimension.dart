// ignore_for_file: unused_element, unnecessary_cast


class ApplicationInfoDimension {
  final String? key;
  final String? value;

  /// Creates a new [ApplicationInfoDimension].
  /// [key] Optional.
  /// [value] Optional.
  ApplicationInfoDimension({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory ApplicationInfoDimension.fromMap(Map<String, dynamic> map) {
    return ApplicationInfoDimension(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

