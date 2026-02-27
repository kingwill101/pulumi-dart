// ignore_for_file: unused_element, unnecessary_cast

/// A service account.
class ServiceAccountComputeAlpha {
  /// Email address of the service account.
  final String? email;

  /// The list of scopes to be made available for this service account.
  final List<String>? scopes;

  ServiceAccountComputeAlpha({
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

  factory ServiceAccountComputeAlpha.fromMap(Map<String, dynamic> map) {
    return ServiceAccountComputeAlpha(
      email: map['email'] == null ? null : map['email'] as String,
      scopes:
          map['scopes'] == null ? null : (map['scopes'] as List).cast<String>(),
    );
  }
}
