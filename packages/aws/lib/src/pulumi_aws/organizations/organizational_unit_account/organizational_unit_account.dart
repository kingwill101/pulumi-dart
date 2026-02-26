// ignore_for_file: unused_element, unnecessary_cast

class OrganizationalUnitAccount {
  /// ARN of the organizational unit
  final String? arn;

  /// Email of the account
  final String? email;

  /// Identifier of the organization unit
  final String? id;

  /// The name for the organizational unit
  final String? name;

  OrganizationalUnitAccount({
    this.arn,
    this.email,
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    final emailValue = email;
    if (emailValue != null) {
      map['email'] = emailValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory OrganizationalUnitAccount.fromMap(Map<String, dynamic> map) {
    return OrganizationalUnitAccount(
      arn: map['arn'] == null ? null : map['arn'] as String,
      email: map['email'] == null ? null : map['email'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
