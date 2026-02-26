// ignore_for_file: unused_element, unnecessary_cast

class InstanceGceSetupServiceAccount {
  /// Optional. Email address of the service account.
  final String? email;

  /// (Output)
  /// Output only. The list of scopes to be made available for this
  /// service account. Set by the CLH to https://www.googleapis.com/auth/cloud-platform
  final List<String>? scopes;

  InstanceGceSetupServiceAccount({
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

  factory InstanceGceSetupServiceAccount.fromMap(Map<String, dynamic> map) {
    return InstanceGceSetupServiceAccount(
      email: map['email'] == null ? null : map['email'] as String,
      scopes:
          map['scopes'] == null ? null : (map['scopes'] as List).cast<String>(),
    );
  }
}
