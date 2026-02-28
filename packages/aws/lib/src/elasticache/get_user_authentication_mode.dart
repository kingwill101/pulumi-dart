// ignore_for_file: unused_element, unnecessary_cast


class GetUserAuthenticationMode {
  final int? passwordCount;
  final String? type;

  /// Creates a new [GetUserAuthenticationMode].
  /// [passwordCount] Optional.
  /// [type] Optional.
  GetUserAuthenticationMode({
    this.passwordCount,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passwordCount': ?passwordCount,
      'type': ?type,
    };
  }

  factory GetUserAuthenticationMode.fromMap(Map<String, dynamic> map) {
    return GetUserAuthenticationMode(
      passwordCount: map['passwordCount'] == null ? null : map['passwordCount'] as int,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

