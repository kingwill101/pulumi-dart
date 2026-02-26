// ignore_for_file: unused_element, unnecessary_cast

class UserExternalId {
  /// The identifier issued to this resource by an external identity provider.
  final String? id;

  /// The issuer for an external identifier.
  final String? issuer;

  UserExternalId({
    this.id,
    this.issuer,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final issuerValue = issuer;
    if (issuerValue != null) {
      map['issuer'] = issuerValue;
    }
    return map;
  }

  factory UserExternalId.fromMap(Map<String, dynamic> map) {
    return UserExternalId(
      id: map['id'] == null ? null : map['id'] as String,
      issuer: map['issuer'] == null ? null : map['issuer'] as String,
    );
  }
}
