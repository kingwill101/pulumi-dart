// ignore_for_file: unused_element, unnecessary_cast

class GetUserAuthenticationMode {
  final int? passwordCount;
  final String? type;

  GetUserAuthenticationMode({
    this.passwordCount,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final passwordCountValue = passwordCount;
    if (passwordCountValue != null) {
      map['passwordCount'] = passwordCountValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory GetUserAuthenticationMode.fromMap(Map<String, dynamic> map) {
    return GetUserAuthenticationMode(
      passwordCount:
          map['passwordCount'] == null ? null : map['passwordCount'] as int,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
