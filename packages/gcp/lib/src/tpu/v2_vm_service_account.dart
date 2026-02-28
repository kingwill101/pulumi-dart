// ignore_for_file: unused_element, unnecessary_cast

class V2VmServiceAccount {
  /// Email address of the service account. If empty, default Compute service account will be used.
  final String? email;

  /// The list of scopes to be made available for this service account. If empty, access to all
  /// Cloud APIs will be allowed.
  final List<String>? scopes;

  /// Creates a new [V2VmServiceAccount].
  /// [email] Email address of the service account. If empty, default Compute service account will be used.
  /// [scopes] The list of scopes to be made available for this service account. If empty, access to all
  V2VmServiceAccount({
    this.email,
    this.scopes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final emailValue = email;
    if (emailValue != null) {
      map['email'] = emailValue;
    }
    final scopesValue = scopes;
    if (scopesValue != null) {
      map['scopes'] = scopesValue;
    }
    return map;
  }

  factory V2VmServiceAccount.fromMap(Map<String, dynamic> map) {
    return V2VmServiceAccount(
      email: map['email'] == null ? null : map['email'] as String,
      scopes:
          map['scopes'] == null ? null : (map['scopes'] as List).cast<String>(),
    );
  }
}
