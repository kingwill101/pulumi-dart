// ignore_for_file: unused_element, unnecessary_cast


class InstanceFromTemplateServiceAccount {
  /// The service account e-mail address.
  final String? email;
  /// A list of service scopes.
  final List<String> scopes;

  /// Creates a new [InstanceFromTemplateServiceAccount].
  /// [email] The service account e-mail address.
  /// [scopes] A list of service scopes.
  InstanceFromTemplateServiceAccount({
    this.email,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'scopes': scopes,
    };
  }

  factory InstanceFromTemplateServiceAccount.fromMap(Map<String, dynamic> map) {
    return InstanceFromTemplateServiceAccount(
      email: map['email'] == null ? null : map['email'] as String,
      scopes: (map['scopes'] as List).cast<String>(),
    );
  }
}

