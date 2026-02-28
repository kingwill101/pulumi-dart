// ignore_for_file: unused_element, unnecessary_cast

class GetUserAuthenticationMode {
  /// Number of passwords belonging to the user if `type` is set to `password`.
  final int passwordCount;

  /// Type of authentication configured.
  final String type;

  /// Creates a new [GetUserAuthenticationMode].
  /// [passwordCount] Number of passwords belonging to the user if `type` is set to `password`.
  /// [type] Type of authentication configured.
  GetUserAuthenticationMode({
    required this.passwordCount,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['passwordCount'] = passwordCount;
    map['type'] = type;
    return map;
  }

  factory GetUserAuthenticationMode.fromMap(Map<String, dynamic> map) {
    return GetUserAuthenticationMode(
      passwordCount: map['passwordCount'] as int,
      type: map['type'] as String,
    );
  }
}
