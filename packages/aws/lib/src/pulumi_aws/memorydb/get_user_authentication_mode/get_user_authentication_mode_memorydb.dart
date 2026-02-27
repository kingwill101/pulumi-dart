// ignore_for_file: unused_element, unnecessary_cast

class GetUserAuthenticationModeMemorydb {
  /// Number of passwords belonging to the user if `type` is set to `password`.
  final int passwordCount;

  /// Type of authentication configured.
  final String type;

  GetUserAuthenticationModeMemorydb({
    required this.passwordCount,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['passwordCount'] = passwordCount;
    map['type'] = type;
    return map;
  }

  factory GetUserAuthenticationModeMemorydb.fromMap(Map<String, dynamic> map) {
    return GetUserAuthenticationModeMemorydb(
      passwordCount: map['passwordCount'] as int,
      type: map['type'] as String,
    );
  }
}
