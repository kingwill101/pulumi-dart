// ignore_for_file: unused_element, unnecessary_cast


class AppSpecIngressSecureHeader {
  /// The name of the environment variable.
  final String? key;
  final String? value;

  /// Creates a new [AppSpecIngressSecureHeader].
  /// [key] The name of the environment variable.
  /// [value] Optional.
  AppSpecIngressSecureHeader({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory AppSpecIngressSecureHeader.fromMap(Map<String, dynamic> map) {
    return AppSpecIngressSecureHeader(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

