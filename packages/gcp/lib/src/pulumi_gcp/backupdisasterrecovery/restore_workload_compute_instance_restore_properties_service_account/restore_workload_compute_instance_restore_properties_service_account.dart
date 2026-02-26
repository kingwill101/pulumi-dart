// ignore_for_file: unused_element, unnecessary_cast

class RestoreWorkloadComputeInstanceRestorePropertiesServiceAccount {
  /// (Optional)
  final String? email;

  /// (Optional)
  final List<String>? scopes;

  RestoreWorkloadComputeInstanceRestorePropertiesServiceAccount({
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

  factory RestoreWorkloadComputeInstanceRestorePropertiesServiceAccount.fromMap(
      Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesServiceAccount(
      email: map['email'] == null ? null : map['email'] as String,
      scopes:
          map['scopes'] == null ? null : (map['scopes'] as List).cast<String>(),
    );
  }
}
