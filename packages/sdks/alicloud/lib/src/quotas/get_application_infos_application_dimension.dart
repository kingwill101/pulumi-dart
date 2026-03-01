// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationInfosApplicationDimension {
  final String key;
  final String value;

  /// Creates a new [GetApplicationInfosApplicationDimension].
  /// [key] Required.
  /// [value] Required.
  GetApplicationInfosApplicationDimension({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetApplicationInfosApplicationDimension.fromMap(Map<String, dynamic> map) {
    return GetApplicationInfosApplicationDimension(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

