// ignore_for_file: unused_element, unnecessary_cast

class InstanceFromTemplateServiceAccount {
  /// The service account e-mail address.
  final String? email;

  /// A list of service scopes.
  final List<String> scopes;

  InstanceFromTemplateServiceAccount({
    this.email,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final emailValue = email;
    if (emailValue != null) {
      map['email'] = emailValue;
    }
    map['scopes'] = scopes;
    return map;
  }

  factory InstanceFromTemplateServiceAccount.fromMap(Map<String, dynamic> map) {
    return InstanceFromTemplateServiceAccount(
      email: map['email'] == null ? null : map['email'] as String,
      scopes: (map['scopes'] as List).cast<String>(),
    );
  }
}
