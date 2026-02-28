// ignore_for_file: unused_element, unnecessary_cast

/// A service account.
class ServiceAccount {
  /// Email address of the service account. If empty, default Compute service account will be used.
  final String? email;

  /// The list of scopes to be made available for this service account. If empty, access to all Cloud APIs will be allowed.
  final List<String>? scope;

  /// Creates a new [ServiceAccount].
  /// [email] Email address of the service account. If empty, default Compute service account will be used.
  /// [scope] The list of scopes to be made available for this service account. If empty, access to all Cloud APIs will be allowed.
  ServiceAccount({
    this.email,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final emailValue = email;
    if (emailValue != null) {
      map['email'] = emailValue;
    }
    final scopeValue = scope;
    if (scopeValue != null) {
      map['scope'] = scopeValue;
    }
    return map;
  }

  factory ServiceAccount.fromMap(Map<String, dynamic> map) {
    return ServiceAccount(
      email: map['email'] == null ? null : map['email'] as String,
      scope:
          map['scope'] == null ? null : (map['scope'] as List).cast<String>(),
    );
  }
}
