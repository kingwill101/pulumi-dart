// ignore_for_file: unused_element, unnecessary_cast

class UserCredsResourceIdentity {
  /// (Output)
  /// The principal identifier string.
  /// See https://cloud.google.com/iam/docs/principal-identifiers.
  final String? principal;

  UserCredsResourceIdentity({
    this.principal,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final principalValue = principal;
    if (principalValue != null) {
      map['principal'] = principalValue;
    }
    return map;
  }

  factory UserCredsResourceIdentity.fromMap(Map<String, dynamic> map) {
    return UserCredsResourceIdentity(
      principal: map['principal'] == null ? null : map['principal'] as String,
    );
  }
}
