// ignore_for_file: unused_element, unnecessary_cast

/// ServiceAccount represents a GCP service account.
class ServiceAccount {
  /// Email address of the service account.
  final String? email;

  /// Creates a new [ServiceAccount].
  /// [email] Email address of the service account.
  ServiceAccount({
    this.email,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final emailValue = email;
    if (emailValue != null) {
      map['email'] = emailValue;
    }
    return map;
  }

  factory ServiceAccount.fromMap(Map<String, dynamic> map) {
    return ServiceAccount(
      email: map['email'] == null ? null : map['email'] as String,
    );
  }
}
